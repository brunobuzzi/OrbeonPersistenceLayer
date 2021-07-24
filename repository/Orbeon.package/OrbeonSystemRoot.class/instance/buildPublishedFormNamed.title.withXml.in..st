forms - builder
buildPublishedFormNamed: formName title: title withXml: xmlDefinition in: anOrbeonApplication
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <anOrbeonApplication>.
	The XML of the form is <xmlDefinition> "

	^self buildPublishedFormNamed: formName version: 1 title: title withXml: xmlDefinition in: anOrbeonApplication