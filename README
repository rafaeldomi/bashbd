##################################################
##################################################
#
#					BASH BD
#
##################################################
############################## by Rafael Domiciano

1. BashBD. What is it?
2. Code conventions
2.1 Functions prototypes
2.2 Returning values
2.3 Comment on the header of the function
2.4 About "source" or "dot" to import
2.5 "variable" vs "constants"
2.6 Handling Errors
3. Structures

##################################################

# 1. BashBD. What is it?
BashBD is a DBMS writeten entirely in bash.
Once there are a huge number of DBMS out there, the question that may arise is: But why?
I script in bash for a long time and I'm a Postgres DBA for so long too, so I asked myself if I could do this, as a challenge to myself. This program is not meant to be perfomatic.
During this process I had learned a lot not only of bash, but also about the postgres internals (a lot of code readed).

Its important to say, of course, DO NOT use this program in a production environment.

#################################################

# 2. Code conventions

## 2.1 Functions Prototypes

* Return code of the function
Every function should have a return code, using the return command
Doing this the caller could analyze the return with the $? variable just after the function.
This is similar to this c function:
int fnc() {
	return 0;
}

Example:
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

## 2.2 Returning values
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

## 2.3 Comment on the header of the function
The function must have all the parameters declared, like this:

#!/bin/bash

# Concatenate 2 values
# $1 - Output variable
# $2 - String to concatenate
# $3 - String to concatenate
concat() {
	local _RET=$1

	eval $_RET="$1$2"
}

## 2.4 About "source" or "dot" to import

In bash, there is not difference between using "source" or "dot".
In the bash manual:
source filename
A synonym for "." .

Ref: http://www.gnu.org/software/bash/manual/bashref.html#Bourne-Shell-Builtins

## 2.5 "variable" vs "constants"
Simple like this:
* Put your variables in the "var" file
* Put your constants in the "const" file, with the "readonly" keyword

## 2.6 Handling Errors
Handling errors in bash at the first look seems hard or complex, but it shouldn't be. Lets see:

- As every function must return a code, you can read "$?"
- Some functions could set ERRCODE (declared in var file) to further analysis
- Doing LOGGER with the FATAL Loglevel, finish the program

## 2.7 Some conventions used
* Prefer $(..) over `..` [http://mywiki.wooledge.org/BashFAQ/082]

# 3. Structures

As bash is not a programatically language, but a bunch of separated commands, and we do a lot steps to glue it together, it doesn't give the best performance perspective; so I have to do some decisions to not lose performance.

Each table is a single file.
The file has a magic code determining the kind, like TABLE, INDEX, so on.
Each record is separated by a magic Code 1E
Each field/attribute inside the record is separated by a magic code 1D
The "header" of the record has some metadata:
  pos1: Record is alive
        0 - No
        1 - Yes
