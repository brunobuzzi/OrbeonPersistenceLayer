forms - builder
buildSavedFormNamed: formName version: version title: title withXml: xmlString in: anOrbeonApplication
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"

	^self buildSavedFormNamed: formName 
			id: UUID new asString
			version: version
			title: title
			withXml: xmlString
			in: anOrbeonApplication