migration script
importDataOf: anOrbeonFormDefinition version: version
	"The receiver import into Orbeon Application <anOrbeonApplication> a form named <formDefinitionName>"
	| dbInstance gsObjects |

	dbInstance := self execute: (mySqlReader sqlGetAllFormsData: anOrbeonFormDefinition formName version: version of: anOrbeonFormDefinition getApplicationName after: self getOldTimeStamp).

	gsObjects := (dbInstance subStrings: String lf) collect: [:eachDBLine | | dbArray |
			dbArray := eachDBLine subStrings: String tab.
			self generateFormInstanceOf: anOrbeonFormDefinition from: dbArray.].

	gsObjects do: [:each | 
		each 
			definition: anOrbeonFormDefinition;
			addToDefinition;
			processXML "process the XML and map it to a GsObject"].

	^gsObjects