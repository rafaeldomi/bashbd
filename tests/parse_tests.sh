#!/bin/bash

# Include the parser script
. ../src/parserv2

# Helper function to check the result of a parsed SQL
check_result() {
  local sql="$1"
  declare -n expected_result="$2"

  echo "=== Running Test ==="
  echo "SQL: $sql"

  # Call parse_sql and suppress its output
  parse_sql "$sql" > /dev/null

  local erro=0
  for key in "${!expected_result[@]}"; do
    local parsed_value="${TOKENS[$key]}"
    local expected_value="${expected_result[$key]}"

    if [ -z "$parsed_value" ]; then
      echo "Token $key not found. ERROR"
      erro=1
      break
    fi

    if [ "$parsed_value" != "$expected_value" ]; then
      echo "Mismatch in values for $key. ERROR"
      echo "Expected: $expected_value, Got: $parsed_value"
      erro=1
      break
    fi
  done

  if [ "$erro" -eq 1 ]; then
    echo "Invalid SQL or parser result."
    declare -p TOKENS
    return 1
  else
    echo "Check OK"
    return 0
  fi
}

# Function to load test cases from JSON file using jq
read_tests_from_json() {
    local file="$1"
    mapfile -t TESTS < <(jq -c '.[]' "$file")
}

# Convert jq-generated JSON data to a Bash associative array
json_to_assoc_array() {
  local json_str="$1"
  declare -A assoc_array

  while IFS="|" read -r key value; do
    # Clean the key (remove brackets)
    key=$(echo "$key" | sed 's/\[//; s/\]//')

    # Clean the value (remove quotes, handle special characters)
    value=$(echo "$value" | sed 's/^"//; s/"$//')

    # Properly assign the key-value to the array
    assoc_array["$key"]="$value"
  done < <(echo "$json_str" | jq -r 'to_entries | map("[\(.key)]|\(.value|tostring)") | .[]')

  # Print the associative array in a way that can be evaluated
  declare -p assoc_array
}


main() {
  echo "** Starting parser checks"
  local total_errors=0
  local total_tests=0

  read_tests_from_json "parse_tests.json"

  for test_case in "${TESTS[@]}"; do
    sql=$(echo "$test_case" | jq -r '.sql')
    expected=$(echo "$test_case" | jq -c '.expected')

    # Convert expected JSON into an associative array
    eval "$(json_to_assoc_array "$expected")"

    # Run the test and check the result
    if ! check_result "$sql" assoc_array; then
      ((total_errors++))
    fi
    ((total_tests++))
  done

  echo "Total Tests: $total_tests - Errors: $total_errors"
}

main
