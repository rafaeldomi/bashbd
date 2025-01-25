# SQL Commands

COMMAND		GROUP				MODIFIERS 		PARSER	TESTED	IMPL	TESTED	HELP (\h)
BACKSLASH	\s					-							OK			OK			OK		OK			-
					\env				-							OK			OK			OK		OK			-
					\function		-							OK			OK			OK		OK			-
GET				-						ALL						OK			OK			OK		OK			OK
											[..]      		OK			OK			OK		OK			OK
											[..,..]				OK			OK			OK		OK			OK
											RESERVED			OK			OK			OK		OK			OK
SET				-						-							OK			OK			OK		OK			OK
											[..,..]				OK			OK			OK		OK			OK
RESET			-						ALL						OK			OK			OK		OK			OK
											[..,..]				OK			OK			OK		OK			OK
TABLE			-						[..]					OK			OK			OK		OK			OK
											SAMPLE				OK			OK			OK		OK			OK
COMMENT	ON	TABLE			-							OK			OK			OK
						INDEX			-							OK			OK
						COLUMN		-							OK
						FUNCTION	-							OK
						TRIGGER		-							OK
						SEQUENCE	-							OK
						VIEW			-							OK
						SCHEMA		-							OK
						*					[APPEND]			OK			OK
SHOW			COMMENT ON 	TABLE					OK			OK			OK		OK			OK
											SCHEMA				OK			OK			OK		OK			OK
											INDEX					OK			OK
											COLUMN				OK			OK
											FUNCTION			OK			OK			OK
											TRIGGER				OK			OK
											VIEW					OK			OK
											SEQUENCE			OK
CREATE		SCHEMA			[..]					OK			OK			OK		OK			OK
											[..,..]				OK			OK			OK						OK
											IFNOTEXISTS		OK			OK			OK		OK			OK
					INDEX				[col]					OK			OK
											(col,...)			OK			OK
					TABLE				NOTNULL				OK
											DEFAULT				OK
											LIKE()
					VIEW				[..]
DROP			SCHEMA			[..]					OK			OK			OK						OK
											[..,..]				OK			OK			OK						OK
											IFEXISTS			OK			OK			OK						OK
											CASCADE				OK			OK										OK
					TABLE				[..]					OK			OK
											[..,..]				OK			OK
					VIEW				[..]
TRUNCATE	TABLE				[..]					OK			OK			OK
											[..,..]				OK			OK			OK
REINDEX		TABLE				[..]					OK			OK
											[..,..]				OK			OK
					INDEX				[..]					OK			OK
											[..,..]				OK			OK
SELECT	SINGLE TABLE
				SINGLE FILTER
				MULTIPLE FILTER
				INNER JOIN
				LEFT JOIN
				RIGHT JOIN
INSERT	VALUES(),()
				FROM SELECT
UPDATE	SINGLE FILTER
				MULTIPLE FILTER
				WITH JOIN
DELETE	FROM
				WHERE
				SINGLE FILTER
				MULTIPLE FILTER

# Data File Anatomy

Position 1 - Byte indicating type of relation (const)
Position 2... -- records

Record Anatomy
Pos 1 - 1E == New record, init header
    1.1 - alive?
    1.2 - size of row
02 -- start of the record

* 1 file per relation (table / index)
* sequence is a special relation
* utilizar seek https://unix.stackexchange.com/questions/307186/what-is-the-difference-between-seek-and-skip-in-dd-command/307188 
* 8kb pages?? 
* dd if=1 count=8 ibs=1 skip=8 conv=notrunc status=none
* dd if=1 count=200 ibs=1 skip=8 conv=notrunc status=none

bashdb.schemas   [1]
bashdb.tables    [2]
bashdb.attrs     [3]
bashdb.types     [4]
bashdb.functions [5]
bashdb.indexes	 [6]
bashdb.languages [7]
bashdb.sequences [8]
bashdb.comments  [9]
bashdb.views     [10]

bashdb.schemas
	id   			integer
	name 			varchar(200) [unique]
bashdb.language
	id				integer
	name			char(200)
	handler		char(200)
bashdb.types
	id				integer
	name			char(200)
	fnc_out		char(200)
	size			integer
bashdb.tables
	id				integer
	name 			char(200)
	schema_id	integer
bashdb.attrs
	id				integer
	table_id	integer
	name			char(200)
	types_id	integer
	size			integer
	default		char(200)
	null			boolean
	unique		boolean
bashdb.functions
	id					integer
	name				char(200)
	handler			varchar
	lang_id			integer
	definition	text
bashdb.index
	id				integer
	table_id	integer
	fields		char(200)
bashdb.sequences
	id					integer
	schema_id		integer
	name				char(200)
	last_value	integer
bashdb.comments
	id				integer
	type_id		integer
	object_id	integer
	comment		char(200)
bashdb.views
  id					integer
	schema_id		integer
	definition	text

integer = 4 bytes
char = defined size

schemas
  - 1 - bashdb
  - 2 - public

tables
  - 1 schemas 1
  - 2 tables 1
  - 3 attrs 1

###### 
Parser: https://hal.archives-ouvertes.fr/hal-01890044/document

Error handling https://stackoverflow.com/questions/64786/error-handling-in-bash


#############
Returning functions
echo vs eval ... tests

# Using mapfile to read
mapfile -t -s 1 rows  < file

######################


++ echo -e -n '\x1E'
+ mapfile -t -s 1 -O 1 -d $'\036' rows

https://stackoverflow.com/questions/5349718/how-can-i-repeat-a-character-in-bash

echo -e -n $'\x0A' | hexdump -C


--- Hexa to decimal
echo $((0xbc))

https://sa-east-1.signin.aws.amazon.com

0A1E
^ ^- Separator code
|- Table code

val 1D 12 1E
val 1D 132 1E

http://mywiki.wooledge.org/BashFAQ/006#Indirection

https://stackoverflow.com/questions/12768907/how-can-i-align-the-columns-of-tables-in-bash


############
# Loop in the records of datafile

initialize the struct
declare -A DATA
DATA[file]={ID_OF_TABLE}
init_file DATA

DATA[pos]=1     	# Actual position
DATA[data]=".."		# The content of the data file
DATA[record_num]=x	# number of the record sequentially
DATA[record]=""		# The raw data of the actual record
DATA[type]=""		# Type of the relation U = Unknown = Table/index

while next_record DATA REC; do
	[..]
	# Values filled inside the next_record
	REC[0]=x		# Fld0
	REC[n]=x		# Fldn
	REC[REC_TOT]=x	# Total fields in this record
	REC[REC_POS]=x	# Position of this record in the datafile
	REC[REC_TAB]=x	# Id of the table
	REC[REC_SZ]=x   # Size of the fields (without the metadata)
	REC[REC_IP]=1/0	# Set if inplace update 1 - Yes 0 - No
done

# How to add a value

The row variable is going to have the following fields:
ROW[table]=The table id
ROW[FIELDS]=Total Fields in this row
ROW[ROWS]=Total of records/rows in this variable
ROW[NAME_x]=Name of the field x
ROW[DEF_x]=Default value fo the field x
ROW[NULL_x]=Indication for the not null for the field x
ROW[TYPE_x]=Type of the field

ROW[rn,fn]=The value of the rn(Row number) and fn(Field number)
	rn and fn is 0-base index

declare -A ROW
ROW[table]=IDofTABLE
table_row_init ROW

# Add a record to the ROW variable, will use the ROW[ROWS] as index for the record
# $1 - The ROW Variable
# $2... - Values
table_row_add_value ROW val1 val2 ${MGC_NULL} val3

# Insert the records in the ROW variable
# This function does not do any change in the values, add as they are
table_row_insert ROW


