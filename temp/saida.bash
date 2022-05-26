+ . const
++ '[' '!' ']'
++ CONST_INCLUDED=1
++ readonly CTABLE_SCHEMAS=1
++ CTABLE_SCHEMAS=1
++ readonly CTABLE_TABLES=2
++ CTABLE_TABLES=2
++ readonly CTABLE_ATTRS=3
++ CTABLE_ATTRS=3
++ readonly CTABLE_TYPES=4
++ CTABLE_TYPES=4
++ readonly CTABLE_FUNCTIONS=5
++ CTABLE_FUNCTIONS=5
++ readonly CTABLE_INDEX=6
++ CTABLE_INDEX=6
++ readonly CTABLE_LANG=7
++ CTABLE_LANG=7
++ readonly CTABLE_SEQUENCES=8
++ CTABLE_SEQUENCES=8
++ readonly SZ_SMALLINT=2
++ SZ_SMALLINT=2
++ readonly SZ_INT=4
++ SZ_INT=4
++ readonly SZ_BIGINT=8
++ SZ_BIGINT=8
++ readonly SZ_CHAR=1
++ SZ_CHAR=1
++ readonly MAGIC_CODE_TABLE=0A
++ MAGIC_CODE_TABLE=0A
++ readonly MAGIC_CODE_INDEX=0B
++ MAGIC_CODE_INDEX=0B
++ readonly MAGIC_CODE_SEQUENCE=0C
++ MAGIC_CODE_SEQUENCE=0C
++ readonly MAGIC_CODE_FUNCTION=0D
++ MAGIC_CODE_FUNCTION=0D
++ readonly MAGIC_CODE_TRIGGER=0E
++ MAGIC_CODE_TRIGGER=0E
++ readonly MAGIC_CODE_NULL=00
++ MAGIC_CODE_NULL=00
++ readonly MAGIC_CODE_SEP=1E
++ MAGIC_CODE_SEP=1E
++ readonly MAGIC_CODE_FLD=1D
++ MAGIC_CODE_FLD=1D
++ readonly STAMP_FILE=bashbd.stamp
++ STAMP_FILE=bashbd.stamp
++ readonly VERSION=0
++ VERSION=0
+ . storage
++ :
+ . temp/table
+ . functions
++ :
++ ASSERT='_assert ${LINENO}'
++ :
++ :
++ :
++ :
++ :
++ :
++ :
++ :
++ :
+ . log
++ :
++ LOGGER='log ${FUNCNAME[0]} ${LINENO}'
++ CL_RED='\e[1;31m'
++ CL_GREEN='\e[1;32m'
++ CL_YELLOW='\e[1;33m'
++ CL_BLUE='\e[1;34m'
++ CL_MAGENTA='\e[1;35m'
++ CL_CYAN='\e[1;36m'
++ CL_NC='\e[0m\033[0m'
+ find_binaries
+ PRGS=(cut dd seq printf echo stat basename bash wc awk sed column cat rm)
+ local PRGS
+ for cmd in "${PRGS[@]}"
++ command -v cut
+ local cmdpath=/usr/bin/cut
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_CUT=/usr/bin/cut
+ PRG_CUT=/usr/bin/cut
+ LOGGER_MSG='Found cut in /usr/bin/cut'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found cut in /usr/bin/cut'
+++ date '+%D %T'
++ '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found cut in /usr/bin/cut'
log: linha 73: fg: nenhum controle de trabalho
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v dd
+ local cmdpath=/usr/bin/dd
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_DD=/usr/bin/dd
+ PRG_DD=/usr/bin/dd
+ LOGGER_MSG='Found dd in /usr/bin/dd'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found dd in /usr/bin/dd'
+++ date '+%D %T'
++ '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found dd in /usr/bin/dd'
log: linha 73: fg: nenhum controle de trabalho
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v seq
+ local cmdpath=/usr/bin/seq
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_SEQ=/usr/bin/seq
+ PRG_SEQ=/usr/bin/seq
+ LOGGER_MSG='Found seq in /usr/bin/seq'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found seq in /usr/bin/seq'
+++ date '+%D %T'
++ '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found seq in /usr/bin/seq'
log: linha 73: fg: nenhum controle de trabalho
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v printf
+ local cmdpath=printf
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_PRINTF=printf
+ PRG_PRINTF=printf
+ LOGGER_MSG='Found printf in printf'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found printf in printf'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found printf in printf'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found printf in printf
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v echo
+ local cmdpath=echo
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_ECHO=echo
+ PRG_ECHO=echo
+ LOGGER_MSG='Found echo in echo'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found echo in echo'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found echo in echo'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found echo in echo
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v stat
+ local cmdpath=/usr/bin/stat
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_STAT=/usr/bin/stat
+ PRG_STAT=/usr/bin/stat
+ LOGGER_MSG='Found stat in /usr/bin/stat'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found stat in /usr/bin/stat'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found stat in /usr/bin/stat'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found stat in /usr/bin/stat
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v basename
+ local cmdpath=/usr/bin/basename
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_BASENAME=/usr/bin/basename
+ PRG_BASENAME=/usr/bin/basename
+ LOGGER_MSG='Found basename in /usr/bin/basename'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found basename in /usr/bin/basename'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found basename in /usr/bin/basename'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found basename in /usr/bin/basename
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v bash
+ local cmdpath=/usr/bin/bash
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_BASH=/usr/bin/bash
+ PRG_BASH=/usr/bin/bash
+ LOGGER_MSG='Found bash in /usr/bin/bash'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found bash in /usr/bin/bash'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found bash in /usr/bin/bash'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found bash in /usr/bin/bash
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v wc
+ local cmdpath=/usr/bin/wc
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_WC=/usr/bin/wc
+ PRG_WC=/usr/bin/wc
+ LOGGER_MSG='Found wc in /usr/bin/wc'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found wc in /usr/bin/wc'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found wc in /usr/bin/wc'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found wc in /usr/bin/wc
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v awk
+ local cmdpath=/usr/bin/awk
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_AWK=/usr/bin/awk
+ PRG_AWK=/usr/bin/awk
+ LOGGER_MSG='Found awk in /usr/bin/awk'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found awk in /usr/bin/awk'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found awk in /usr/bin/awk'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found awk in /usr/bin/awk
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v sed
+ local cmdpath=/usr/bin/sed
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_SED=/usr/bin/sed
+ PRG_SED=/usr/bin/sed
+ LOGGER_MSG='Found sed in /usr/bin/sed'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found sed in /usr/bin/sed'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found sed in /usr/bin/sed'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found sed in /usr/bin/sed
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v column
+ local cmdpath=/usr/bin/column
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_COLUMN=/usr/bin/column
+ PRG_COLUMN=/usr/bin/column
+ LOGGER_MSG='Found column in /usr/bin/column'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found column in /usr/bin/column'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found column in /usr/bin/column'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found column in /usr/bin/column
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v cat
+ local cmdpath=/usr/bin/cat
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_CAT=/usr/bin/cat
+ PRG_CAT=/usr/bin/cat
+ LOGGER_MSG='Found cat in /usr/bin/cat'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found cat in /usr/bin/cat'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found cat in /usr/bin/cat'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found cat in /usr/bin/cat
++ '[' DEBUG2 == FATAL ']'
+ for cmd in "${PRGS[@]}"
++ command -v rm
+ local cmdpath=/usr/bin/rm
+ RES=0
+ '[' '!' 0 == 0 ']'
+ readonly PRG_RM=/usr/bin/rm
+ PRG_RM=/usr/bin/rm
+ LOGGER_MSG='Found rm in /usr/bin/rm'
+ eval log '${FUNCNAME[0]}' '${LINENO}' DEBUG2
++ log find_binaries 222 DEBUG2
++ local _FUNC=find_binaries
++ local _LINE=222
++ local _LEVEL=DEBUG2
++ LL=DEBUG2
++ '[' DEBUG2 == DEBUG3 ']'
++ MSG=
++ '[' -z ']'
++ MSG='Found rm in /usr/bin/rm'
+++ date '+%D %T'
++ printf '%s [%17s:%-3s %6s]: %s\n' '05/01/22 23:20:45' find_binaries 222 DEBUG2 'Found rm in /usr/bin/rm'
05/01/22 23:20:45 [    find_binaries:222 DEBUG2]: Found rm in /usr/bin/rm
++ '[' DEBUG2 == FATAL ']'
+ declare -A ATABLE
+ FILE=data/1
+ '[' '!' -f data/1 ']'
+ echo 'Dumping: data/1'
Dumping: data/1
++ /usr/bin/dd if=data/1 ibs=1 count=1 conv=notrunc status=none
++ xxd -p
+ TMP=0a
+ VALUE=0A
+ get_magic_code_name OUT 0A
+ local _RET=OUT
+ case $2 in
+ eval OUT=TABLE
++ OUT=TABLE
+ echo '  Type: 0A (TABLE)'
  Type: 0A (TABLE)
++ echo -en '\x1E'
+ mapfile -t -s 1 -O 1 -d $'\036' DATA
+ ATABLE[ROWS]=2
+ rown=0
+ TABDATA=
+ TABFLD='Row N, Alive'
+ for i_row in "${DATA[@]}"
++ echo -en '\x1D'
+ mapfile -t -O 1 -d $'\035' FLD
++ echo '1       1                                                                                                                                                                                                  bashbd'
+ let rown++
+ rowf=0
+ TABSEP=
+ TABDATA=1
+ for f in "${FLD[@]}"
++ echo 1
+ inf=1
+ check_size 0 1
+ atual=
+ input=1
+ '[' -z ']'
+ atual=0
+ '[' 1 -gt 0 ']'
+ ATABLE[S_$1]=1
+ '[' 0 -eq 0 ']'
+ :
+ let rowf++
+ TABDATA=1,1
+ TABSEP=,
+ ATABLE[${rown}_${rowf}]=1
+ for f in "${FLD[@]}"
++ echo 1
+ inf=1
+ check_size 1 1
+ atual=
+ input=1
+ '[' -z ']'
+ atual=0
+ '[' 1 -gt 0 ']'
+ ATABLE[S_$1]=1
+ '[' 1 -eq 0 ']'
+ '[' 1 -eq 1 ']'
+ TABFLD='Row N, Alive,Fld1'
+ let rowf++
+ TABDATA=1,1,1
+ TABSEP=,
+ ATABLE[${rown}_${rowf}]=1
+ for f in "${FLD[@]}"
++ echo bashbd
+ inf=bashbd
+ check_size 2 bashbd
+ atual=
+ input=6
+ '[' -z ']'
+ atual=0
+ '[' 6 -gt 0 ']'
+ ATABLE[S_$1]=6
+ '[' 2 -eq 0 ']'
+ '[' 1 -eq 1 ']'
+ TABFLD='Row N, Alive,Fld1,Fld2'
+ let rowf++
+ TABDATA=1,1,1,bashbd
+ TABSEP=,
+ ATABLE[${rown}_${rowf}]=bashbd
+ TABDATA='1,1,1,bashbd
'
+ '[' 1 == 1 ']'
+ ATABLE[TF]=3
+ for i_row in "${DATA[@]}"
++ echo -en '\x1D'
+ mapfile -t -O 1 -d $'\035' FLD
++ echo '1       2                                                                                                                                                                                                  public'
+ let rown++
+ rowf=0
+ TABSEP=
+ TABDATA='1,1,1,bashbd
2'
+ for f in "${FLD[@]}"
++ echo 1
+ inf=1
+ check_size 0 1
+ atual=1
+ input=1
+ '[' -z 1 ']'
+ '[' 1 -gt 1 ']'
+ '[' 0 -eq 0 ']'
+ :
+ let rowf++
+ TABDATA='1,1,1,bashbd
2,1'
+ TABSEP=,
+ ATABLE[${rown}_${rowf}]=1
+ for f in "${FLD[@]}"
++ echo 2
+ inf=2
+ check_size 1 2
+ atual=1
+ input=1
+ '[' -z 1 ']'
+ '[' 1 -gt 1 ']'
+ '[' 1 -eq 0 ']'
+ '[' 2 -eq 1 ']'
+ let rowf++
+ TABDATA='1,1,1,bashbd
2,1,2'
+ TABSEP=,
+ ATABLE[${rown}_${rowf}]=2
+ for f in "${FLD[@]}"
++ echo public
+ inf=public
+ check_size 2 public
+ atual=6
+ input=6
+ '[' -z 6 ']'
+ '[' 6 -gt 6 ']'
+ '[' 2 -eq 0 ']'
+ '[' 2 -eq 1 ']'
+ let rowf++
+ TABDATA='1,1,1,bashbd
2,1,2,public'
+ TABSEP=,
+ ATABLE[${rown}_${rowf}]=public
+ TABDATA='1,1,1,bashbd
2,1,2,public
'
+ '[' 2 == 1 ']'
+ echo 'Total fields: 3'
Total fields: 3
+ echo 'Total Rows: 2'
Total Rows: 2
+ echo ''

+ printTable , 'Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public
'
+ local -r delimiter=,
++ removeEmptyLines 'Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public
'
++ local -r 'content=Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public
'
++ echo -e 'Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public
'
++ /usr/bin/sed '/^\s*$/d'
+ local -r 'data=Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public'
+ [[ , != '' ]]
++ isEmptyString 'Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public'
++ local -r 'string=Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public'
+++ trimString 'Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public'
+++ local -r 'string=Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public'
+++ /usr/bin/sed 's,^[[:blank:]]*,,'
+++ /usr/bin/sed 's,[[:blank:]]*$,,'
++ [[ Row N, Alive,Fld1,Fld2
1,1,1,bashbd
2,1,2,public = '' ]]
++ echo false
++ return 1
+ [[ false = \f\a\l\s\e ]]
++ /usr/bin/wc -l
+ local -r numberOfLines=3
+ [[ 3 -gt 0 ]]
+ local table=
+ local i=1
+ (( i = 1 ))
+ (( i <= 3 ))
+ local line=
++ /usr/bin/sed '1q;d'
+ line='Row N, Alive,Fld1,Fld2'
+ local numberOfColumns=0
++ /usr/bin/awk -F , '{print NF}'
+ numberOfColumns=4
+ [[ 1 -eq 1 ]]
+++ repeatString '#+' 4
+++ local -r string=#+
+++ local -r numberToRepeat=4
+++ [[ #+ != '' ]]
+++ [[ 4 =~ ^[1-9][0-9]*$ ]]
++++ printf %4s
+++ local -r 'result=    '
+++ echo -e '#+#+#+#+'
++ printf %s#+ '#+#+#+#+'
+ table='#+#+#+#+#+'
+ table='#+#+#+#+#+\n'
+ local j=1
+ (( j = 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 1
++ printf '#| %s' 'Row N'
+ table='#+#+#+#+#+\n#| Row N'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 2
++ printf '#| %s' ' Alive'
+ table='#+#+#+#+#+\n#| Row N#|  Alive'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 3
++ printf '#| %s' Fld1
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 4
++ printf '#| %s' Fld2
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n'
+ [[ 1 -eq 1 ]]
+++ repeatString '#+' 4
+++ local -r string=#+
+++ local -r numberToRepeat=4
+++ [[ #+ != '' ]]
+++ [[ 4 =~ ^[1-9][0-9]*$ ]]
++++ printf %4s
+++ local -r 'result=    '
+++ echo -e '#+#+#+#+'
++ printf %s#+ '#+#+#+#+'
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+'
+ (( i = i + 1 ))
+ (( i <= 3 ))
+ local line=
++ /usr/bin/sed '2q;d'
+ line=1,1,1,bashbd
+ local numberOfColumns=0
++ /usr/bin/awk -F , '{print NF}'
+ numberOfColumns=4
+ [[ 2 -eq 1 ]]
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n'
+ local j=1
+ (( j = 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 1
++ printf '#| %s' 1
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 2
++ printf '#| %s' 1
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 3
++ printf '#| %s' 1
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 4
++ printf '#| %s' bashbd
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n'
+ [[ 2 -eq 1 ]]
+ [[ 3 -gt 1 ]]
+ [[ 2 -eq 3 ]]
+ (( i = i + 1 ))
+ (( i <= 3 ))
+ local line=
++ /usr/bin/sed '3q;d'
+ line=2,1,2,public
+ local numberOfColumns=0
++ /usr/bin/awk -F , '{print NF}'
+ numberOfColumns=4
+ [[ 3 -eq 1 ]]
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n'
+ local j=1
+ (( j = 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 1
++ printf '#| %s' 2
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 2
++ printf '#| %s' 1
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 3
++ printf '#| %s' 2
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+++ cut -d , -f 4
++ printf '#| %s' public
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public'
+ (( j = j + 1 ))
+ (( j <= 4 ))
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n'
+ [[ 3 -eq 1 ]]
+ [[ 3 -gt 1 ]]
+ [[ 3 -eq 3 ]]
+++ repeatString '#+' 4
+++ local -r string=#+
+++ local -r numberToRepeat=4
+++ [[ #+ != '' ]]
+++ [[ 4 =~ ^[1-9][0-9]*$ ]]
++++ printf %4s
+++ local -r 'result=    '
+++ echo -e '#+#+#+#+'
++ printf %s#+ '#+#+#+#+'
+ table='#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n#+#+#+#+#+'
+ (( i = i + 1 ))
+ (( i <= 3 ))
++ isEmptyString '#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n#+#+#+#+#+'
++ local -r 'string=#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n#+#+#+#+#+'
+++ trimString '#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n#+#+#+#+#+'
+++ local -r 'string=#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n#+#+#+#+#+'
+++ /usr/bin/sed 's,^[[:blank:]]*,,'
+++ /usr/bin/sed 's,[[:blank:]]*$,,'
++ [[ #+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n#+#+#+#+#+ = '' ]]
++ echo false
++ return 1
+ [[ false = \f\a\l\s\e ]]
+ echo -e '#+#+#+#+#+\n#| Row N#|  Alive#| Fld1#| Fld2#|\n#+#+#+#+#+\n#| 1#| 1#| 1#| bashbd#|\n\n#| 2#| 1#| 2#| public#|\n#+#+#+#+#+'
+ /usr/bin/column -s '#' -t
+ /usr/bin/awk '/^\+/{gsub(" ", "-", $0)}1'
+--------+---------+-------+---------+
| Row N  |  Alive  | Fld1  | Fld2    |
+--------+---------+-------+---------+
| 1      | 1       | 1     | bashbd  |
| 2      | 1       | 2     | public  |
+--------+---------+-------+---------+
