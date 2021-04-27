build form definitions
buildDefinitionFrom: xmlString name: formName version: version in: anOrbeonApplication
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"

	^self buildDefinitionFrom: xmlString 
			name: formName 
			version: version 
			id: UUID new asString 
			in: anOrbeonApplication 
			title: formName