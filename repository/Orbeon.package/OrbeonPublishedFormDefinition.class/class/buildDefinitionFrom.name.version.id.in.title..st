build form definitions
buildDefinitionFrom: xmlString name: formName version: version id: stringId in: anOrbeonApplication title: title
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"
	
	^self buildDefinitionFrom: xmlString 
			savedXml: xmlString 
			name: formName
			version: version 
			id: stringId 
			in: anOrbeonApplication 
			title: title