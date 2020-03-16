other
getLastUpdateOf: formName in: appName version: version
	"Answer the last update time for form named <formNamed> in Orbeon applicaiton <appName> in MySql database"
	| sqlResult |

	sqlResult := self execute: (sqlReader sqlFormDefinitionLastUpdateFor: appName form: formName version: version).
	
	sqlResult isEmpty ifTrue:[^self getOldTimeStamp].

	^(sqlResult subStrings: String lf) first