forms - builder
buildSavedFormNamed: formName withXml: xmlString in: anOrbeonApplication
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"

	^self buildSavedFormNamed: xmlString 
			title: formName
			withXml: formName 
			in: anOrbeonApplication