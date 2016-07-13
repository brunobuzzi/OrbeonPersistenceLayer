*orbeon
printMySqlString

	"^self asDate printMySqlString, ' ', self asTime printMySqlString"

	^self asDateAndTime asTimeStamp printMySqlString