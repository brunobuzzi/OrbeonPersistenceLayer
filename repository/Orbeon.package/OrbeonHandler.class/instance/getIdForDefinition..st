migration script
getIdForDefinition: anOrbeonFormDefinition
	"The receiver get the [id] of definition <anOrbeonFormDefinition> from the database if it is the first version otherwise get the [id] from the already stored form definition"
	| sqlResult query |

	(anOrbeonFormDefinition version = 1) "no previous version --> we get the [id] from the database (must be at least one saved definition)"
	ifTrue: [query := mySqlReader sqlGetInstanceDefinitionTimeStamp: anOrbeonFormDefinition modifiedTime.
				sqlResult := self execute: query.
				sqlResult isEmpty ifTrue: [^NoSqlDataRetrievedException signal: 'No data found in [orbeon_form_data] table for: ', anOrbeonFormDefinition applicationName, '.', anOrbeonFormDefinition formName]. 
				^(sqlResult subStrings: String tab) second].

	"<anOrbeonFormDefinition> has previous version --> we get the [id] from stored definitions"

	^(self getOrbeonApplicationClass formDefinitionNamed: anOrbeonFormDefinition formName in: anOrbeonFormDefinition applicationName) id