db import
importDataFromScratchOf: anOrbeonFormDefinition
	"The receiver import into Orbeon Application <anOrbeonApplication> and form named <formDefinitionName> all <OrbeonFormInstance>s in Orbeon relational database.
	Optimized for definitions with a lof of form instances."
	| ids gsObjects |

	"answer aString (filter by <anOrbeonFormDefinition> version). There are NO TimeStamp filters (get all rows for <anOrbeonFormDefinition>)"
	ids := self getAllDocumentIdsForDefinition: anOrbeonFormDefinition.

	gsObjects := (ids subStrings: String lf) collect: [:eachId | | sqlResult dbArray | 
			sqlResult := self getFormWithId: eachId.
			dbArray := sqlResult subStrings: String tab.
			self generateFormInstanceOf: anOrbeonFormDefinition from: dbArray.].

	gsObjects do: [:each | 
		each definition: anOrbeonFormDefinition;
			addToDefinition;
			processXML "process the XML and map it to a GsObject"].

	^gsObjects