xml op
generateXmlNodeForFormBuilderVersionList: anOrbeonPublishedFormDefinition with: anXMLWriter
	"The receiver create a XML structure to display the definition <anOrbeonFormDefinition> in ../orbeon/fr page"
	| attributes |

	attributes := OrderedCollection new.
	attributes add: ('operations' -> '*').

	anXMLWriter tag: 'form' attributes: attributes asArray  with: [
		anXMLWriter tag: 'application-name' with: anOrbeonPublishedFormDefinition getApplicationName.
		anXMLWriter tag: 'form-name' with: anOrbeonPublishedFormDefinition formName.
		anXMLWriter tag: 'title' with: anOrbeonPublishedFormDefinition title.
		anXMLWriter tag: 'description' with: anOrbeonPublishedFormDefinition description.
		anXMLWriter tag: 'last-modified-time' with: anOrbeonPublishedFormDefinition modifiedTime asOrbeonDateTimeString.
		anXMLWriter tag: 'form-version' with: anOrbeonPublishedFormDefinition version printString.
	].