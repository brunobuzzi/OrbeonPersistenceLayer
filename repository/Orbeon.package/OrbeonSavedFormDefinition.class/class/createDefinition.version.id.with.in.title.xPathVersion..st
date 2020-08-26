definition creation
createDefinition: formName version: version id: stringId with: definitionMethod in: anOrbeonApplication title: title xPathVersion: anOrbeonXmlPath
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"

	^self createDefinition: formName 
			version: version 
			id: stringId
			withXML: (anOrbeonXmlPath templateClass perform: definitionMethod) 
			in: anOrbeonApplication 
			title: title 
			xPathVersion: anOrbeonXmlPath