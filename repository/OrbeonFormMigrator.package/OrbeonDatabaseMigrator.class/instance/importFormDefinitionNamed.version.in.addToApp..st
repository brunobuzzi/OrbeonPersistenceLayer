db import basic
importFormDefinitionNamed: formDefinitionName version: version in: appName addToApp: aBoolean
	"The receiver import into Orbeon Application <anOrbeonApplication> a form named <formDefinitionName>.
	Does NOT import attachments."
	| dbDefnition gsDefinition dbArray app sqlString |

	sqlString := sqlReader sqlGetFormDefinition: formDefinitionName version: version of: appName after: self getOldTimeStamp.

	dbDefnition := self execute: sqlString.
	dbArray := dbDefnition trimLeadingSeparators subStrings: String tab.
	gsDefinition := self generateFormDefinition: formDefinitionName app: appName from: dbArray. "generate object from <dbArray>"
	"get the db id from the form definition"
	gsDefinition id: (self getIdForDefinition: gsDefinition). 
	"gsDefinition id: 'ec6132c917fa583f3d527ae4fd1d526ad7354a8c'."

	gsDefinition processXMLDefinition. "set the OrbeonFormDefinition with it's values -xml-"

	aBoolean ifTrue: [app := self getOrbeonApplicationClass applicationNamed: appName.
							app addPublishedDefinition: gsDefinition].

	^gsDefinition