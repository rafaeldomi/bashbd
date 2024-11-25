#					BASH DB
by Rafael Domiciano

# Fast reading
## Initialize database
./bashdb -b data

## Open the database
./bashdb data

For help type \?

# Long reading
1. [BashDB. What is it?](#bashdb)
2. [Code](#code)
    1. [Functions prototypes](#21-functions-prototypes)
    2. [Returning values](#22-returning-values)
    3. [Comment on the header of the function](#23-function-header)
    4. [About "source" or "dot" to import](#24-about-source-or-dot-to-import)
    5. ["variable" vs "constants"](#25-variable-vs-constants)
    6. [Handling Errors](#26-handling-errors)
    7. [Some conventions used](#27-some-conventions-used)
    8. [Calling commands](#28-calling-commands)
    9. [Logging](#29-logging)
    10. [dump_data script](#210-dump_data-script)
3. [Structures](#3-structures)
    1. [Code Workflows](#31-code-workflows)
    2. [File format](#32-file-format)
4. [Metadata](#4-metadata)

##################################################

# [1. BashDB. What is it?](#bashdb)
BashDB is a DBMS writeten entirely in bash.
Once there are a huge number of DBMS out there, the question that may arise is: But why?
I script in bash for a long time and I'm a Postgres DBA for so long too, so I asked myself if I could do this, as a challenge to myself. This program is not meant to be perfomatic.
During this process I had learned a lot not only of bash, but also about the postgres internals (a lot of code readed).

Its important to say, of course, DO NOT use this program in a production environment.

#################################################

# [2. Code conventions](#code)

## [2.1 Functions Prototypes](#21-functions-prototypes)

* Return code of the function
Every function should have a return code, using the return command
Doing this the caller could analyze the return with the $? variable just after the function.
This is similar to this c function:
int fnc() {
	return 0;
}

Example:
```bash
#!/bin/bash
fnc() {
	if [ true ]; then
		return 0
	else
		return 1
	fi
}
fnc
echo $?
```

Aditionally functions should use local variable with "_" initiating the name.
Example:
```bash
#!/bin/bash
# $1 - Input value
fnc() {
	local _INPUT=$1
}
```

## [2.2 Returning values](#22-returning-values)
If the function must return a value, the first parameter of the function is used for this purpose. Is similar to an c function that has the first parameter returning by reference.

Example:
#!/bin/bash

# $1 - The return
fnc() {
	# Declaring the local variable and setting to variable outside of this function
	local _RET=$1

	# Setting the variable, by reference. Must have the "eval" command
	eval $_RET="Value inside the function"
}

# Just pass the name of the variable, without the "$" symbol
fnc VALUE
echo $VALUE ## << this is going to print "Value inside the function"

Note: There are some cases that is not compliant with this convention . These are, in majority, the firsts functions created.

Note 2: Prefer this method of returning values than returning with echo, because this way is more faster. Further read: xxxx

## [2.3 Function Header](#23-function-header)
The function must have all the parameters declared, like this:

#!/bin/bash

: <<'FUNCTION'
Description: A short description
Parameters:
 $1 - Param1
 $2 - Param2
FUNCTION
concat() {
	local _RET=$1

	eval $_RET="$2$3"
}

## [2.4 About "source" or "dot" to import](#24-about-source-or-dot-to-import)

In bash, there is not difference between using "source" or "dot".
In the bash manual:
source filename
A synonym for "." filename

Ref: http://www.gnu.org/software/bash/manual/bashref.html#Bourne-Shell-Builtins

## [2.5 "variable" vs "constants"](#25-variable-vs-constants)
Simple like this:
* Put your variables in the "var" file
* Put your constants in the "const" file, with the "readonly" keyword

## [2.6 Handling Errors](#26-handling-errors)
Handling errors in bash at the first look seems hard or complex, but it shouldn't be. Lets see:

- As every function must return a code, you can read "$?"
- Some functions could set ERRCODE (declared in var file) to further analysis
- Doing LOGGER with the FATAL Loglevel, finish the program

## [2.7 Some conventions used](#27-some-conventions-used)
* Prefer $(..) over `..` [http://mywiki.wooledge.org/BashFAQ/082]

## [2.8 Calling commands](#28-calling-commands)
Everytime a command is called, bash searchs $PATH for its location to execute. To perform better, bashdb searchs for those path commands, done by function->[find_binaries].
The "find_binaries" save the path command in a variable with the following pattern: PRG_[COMMAND]. Some examples:
 - seq    => PRG_SEQ
 - printf => PRG_PRINTF
 - echo   => PRG_ECHO
   \_ $PRG_ECHO "Test"

## [2.9 Logging](#29-logging)
To generate log use the log function, like this:

```bash
# Source
. log

some_function() {
	eval $LOGGER LOG "Message to log"
}
```

You can use these log Level:
* FATAL
	This level finish the program with functions.finish 1
* ERROR
* WARNING
* HINT
* LOG
* DEBUG
* DEBUG1
* DEBUG2

## [2.10 dump_data script](#210-dump_data-script)
Something there is need to debug the table, you can use the dump_data script:
./dump_data data/1

# [3. Structures](#3-structures)

As bash is not a programatically language, but a bunch of separated commands, and we do a lot steps to glue it together, it doesn't give the best performance perspective; so I have to do some decisions to not lose performance.

Each table is a single file.
The file has a magic code determining the kind, like TABLE, INDEX, so on.
Each record is separated by a magic Code 1E
Each field/attribute inside the record is separated by a magic code 1D
The "header" of the record has some metadata:
  pos1: Record is alive
        0 - No
        1 - Yes

## [3.1. Code Workflows](#31-code-workflows)

* HelpMenu
```
bd [main]
  | functions [show_help]
```

* Bootstrap
```
bd [main]
  | bootstrap [bootstrap]
```

* Help menu
```
bd [main]
  | input - help
  | menu [cmd_menu]
	| \t menu [menu_list_tables]
    | \s menu [menu_list_schemas]
	| \f menu [menu_list_functions]
	| \l menu [menu_list_lang]
```

* Execute
```
bd [main]
  | input - query
  | executor [execute]
    | parser [parser]
      | TABLE  cmd_table  [table_execute]
	  | SELECT cmd_select [select_execute]
      | INSERT cmd_insert [insert_execute]
      | DELETE cmd_delete [delete_execute]
	  | CREATE cmd_create
	  |   SCHEMA
```

## [3.2. File Format](#32-file-format)

* Magic code of the type of object
* Group/Record Separator
* Field separator

## [4. Metadata](#4-metadata)
```
bashdb.schemas
bashdb.tables
bashdb.attrs
bashdb.types
bashdb.functions
bashdb.index
bashdb.lang
bashdb.sequences
bashdb.comments
```