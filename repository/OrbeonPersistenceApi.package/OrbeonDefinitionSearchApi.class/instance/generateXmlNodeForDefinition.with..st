other
generateXmlNodeForDefinition: anOrbeonFormInstanceDefinition with: aXMLWriter
	"The receiver generate a XML structure for the definition <anOrbeonFormInstanceDefinition>.
	Defaults fields to show (createdTime, draft, modifiedTime, app, form, title, description).
	This is method is for Form Builder Summary"
	| nodeAttributes tag |

	nodeAttributes := OrderedCollection new
		add: 'created' -> anOrbeonFormInstanceDefinition createdTime asOrbeonDateTimeString;
		add: 'draft' -> anOrbeonFormInstanceDefinition printDraft;
		add: 'last-modified' -> anOrbeonFormInstanceDefinition modifiedTime asOrbeonDateTimeString;
		add: 'name' -> anOrbeonFormInstanceDefinition id;
		add: 'operations' -> '*';
		asArray.

	tag := aXMLWriter tag: 'document' attributes: nodeAttributes.

	tag with: [aXMLWriter tag: 'details' 
									with: [aXMLWriter tag: 'detail' with: anOrbeonFormInstanceDefinition getApplicationName.
											aXMLWriter tag: 'detail' with: anOrbeonFormInstanceDefinition formName.
											aXMLWriter tag: 'detail' with: anOrbeonFormInstanceDefinition title.
											aXMLWriter tag: 'detail' with: anOrbeonFormInstanceDefinition description.]]