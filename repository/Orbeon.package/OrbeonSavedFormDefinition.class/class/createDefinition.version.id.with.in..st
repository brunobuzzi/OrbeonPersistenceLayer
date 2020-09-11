definition creation
createDefinition: formName version: version id: id with: definitionMethod in: anOrbeonApplication
	"The receiver create the pair <OrbeonSavedFormDefinition> & <OrbeonPublishedFormDefinition> for as form named <formName> in application <anOrbeonApplication>.
	The current template class lookup the form's source using the symbol method <definitionMethod>"

	^self createDefinition: formName version: version id: id with: definitionMethod in: anOrbeonApplication title: formName xPathVersion: self getOrbeonWebServerConfiguration orbeonXpathVersion