forms - builder
buildPublishedFormNamed: formName version: version title: title withXml: xmlDefinition id: anUIID in: anOrbeonApplication
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <anOrbeonApplication>.
	The XML of the form is <xmlDefinition> "

	^self buildPublishedFormNamed: formName 
			id: anUIID
			version: version 
			title: title 
			publishedXml: xmlDefinition 
			savedXml: xmlDefinition
			in: anOrbeonApplication