#!/bin/bash

# Helper function to execute SQL and check results against expected output
check_sql_result() {
  local command="$1"
  local expected_output="$2"

  echo "=== Running Test ==="
  echo "Command: $command"

  # Executing test and saving output
  local output
  outputraw=$(../bashdb -n -d data_test -t -o csv -c "$command")

  output=$(echo "$outputraw")

  if [[ "$output" == "$expected_output" ]]; then
    echo "Check OK"
    return 0
  else
    echo "Test failed."
    echo "Output:"
    echo "$output"
    echo "Expected:"
    echo "$expected_output"
    return 1
  fi
}

# Function to parse the new definition format
read_tests_from_file() {
  local file="$1"
  declare -n _TESTS=$2

  local current_commands=""
  local current_expected=""
  local in_expected=0
  local index=0
  local nl=""

  while IFS= read -r line; do
    # Empty line
    [[ -z "$line" ]] && continue

    # ':' identifies a new test case
    if [[ "$line" == :* ]]; then
      # Save latest test case if exists
      if [[ -n "$current_commands" ]]; then
        _TESTS[$index,commands]="$current_commands"
        _TESTS[$index,expected]="$current_expected"
      fi
      let index++
      # We are in a new test case
      current_commands=""
      current_expected=""
      in_expected=0
      nl=""
    elif [[ "$line" == '>>>EXPECTED>>>' ]]; then
      in_expected=1
      nl=""
    else
      if [[ $in_expected -eq 1 ]]; then
        current_expected+="$nl$line"
        nl=$'\n'
      else
        current_commands+="$nl$line"
        nl=$'\n'
      fi
    fi
  done < <(cat "$file"; echo)

  if [[ -n "$current_commands" ]]; then
    _TESTS[$index,commands]="$current_commands"
    _TESTS[$index,expected]="$current_expected"
  fi

  _TESTS[total]=$index
}

main() {
  echo "** Starting SQL command checks"
  local total_errors=0
  local total_tests=0

  echo "Bootstrapping"
  if [ -d data_test ]; then
    rm -Rf data_test
  fi
  ../bashdb -b data_test

  declare -A TESTS
  read_tests_from_file "sql_tests.definition" TESTS

  for ((i=1;i<=${TESTS[total]};i++)); do
    commands="${TESTS[$i,commands]}"
    expected="${TESTS[$i,expected]}"

    # Run the test and check the result
    if ! check_sql_result "$commands" "$expected"; then
      ((total_errors++))
    fi
    ((total_tests++))
  done

  echo "Total Tests: $total_tests - Errors: $total_errors"
}

main
