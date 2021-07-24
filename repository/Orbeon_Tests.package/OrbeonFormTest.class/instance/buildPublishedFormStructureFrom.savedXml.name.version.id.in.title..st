other
buildPublishedFormStructureFrom: xmlDefinition savedXml: savedXml name: formName version: version id: stringId in: appName title: title 
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	| anOrbeonApplication |

	anOrbeonApplication := testRoot getExistingApplicationOrCreateNewNamed: appName.

	^testRoot buildPublishedFormNamed: formName version: version title: title publishedXml: xmlDefinition savedXml: savedXml id: stringId in: anOrbeonApplication