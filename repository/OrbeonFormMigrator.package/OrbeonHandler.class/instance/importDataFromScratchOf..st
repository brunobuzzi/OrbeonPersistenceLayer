migration script
importDataFromScratchOf: anOrbeonFormDefinition
	"The receiver import into Orbeon Application <anOrbeonApplication> a form named <formDefinitionName>.
	This method has NO SENDERS is intented to use manually (programmatically) to import a Form Definition and Instances from the Scratch.
	Optimized for definitions with a lof of form instances."
	| ids gsObjects |

	ids := self getAllDocumentIdsForDefinition: anOrbeonFormDefinition. "answer aString (filter by anOrbeonFormDefinition version)"

	gsObjects := (ids subStrings: String lf) collect: [:eachId | | sqlResult dbArray | 
			sqlResult := self getFormWithId: eachId.
			dbArray := sqlResult subStrings: String tab.
			self generateFormInstanceOf: anOrbeonFormDefinition from: dbArray.].

	gsObjects do: [:each | 
		each definition: anOrbeonFormDefinition;
			addToDefinition;
			processXML "process the XML and map it to a GsObject"].

	^gsObjects