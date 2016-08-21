builder summary
generateXmlNodeForDefinition: anOrbeonSavedFormDefinition with: aXMLWriter
	"The receiver generate a XML structure for the definition <anOrbeonFormInstanceDefinition>.
	Defaults fields to show (createdTime, draft, modifiedTime, app, form, title, description).
	This is method is for Form Builder Summary"
	| nodeAttributes tag |

	nodeAttributes := OrderedCollection new
		add: 'created' -> anOrbeonSavedFormDefinition createdTime asOrbeonDateTimeString;
		add: 'draft' -> anOrbeonSavedFormDefinition printDraft;
		add: 'last-modified' -> anOrbeonSavedFormDefinition modifiedTime asOrbeonDateTimeString;
		add: 'name' -> anOrbeonSavedFormDefinition id;
		add: 'operations' -> '*';
		asArray.

	tag := aXMLWriter tag: 'document' attributes: nodeAttributes.

	tag with: [aXMLWriter tag: 'details' 
									with: [aXMLWriter tag: 'detail' with: anOrbeonSavedFormDefinition getApplicationName.
											aXMLWriter tag: 'detail' with: anOrbeonSavedFormDefinition formName.
											aXMLWriter tag: 'detail' with: anOrbeonSavedFormDefinition title.
											aXMLWriter tag: 'detail' with: anOrbeonSavedFormDefinition description.]]