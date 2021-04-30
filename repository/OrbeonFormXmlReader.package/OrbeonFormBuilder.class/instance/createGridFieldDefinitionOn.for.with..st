build definition components
createGridFieldDefinitionOn: anOrbeonPublishedFormDefinition for: aFormGridDefinition with: xmlGrid
	"Populate receiver's grid definition <aFormGridDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlGrid>"
	| search summary |

	summary := self summaryFormFieldsNameIn: xmlGrid.
	search := self searchFormFieldsNameIn: xmlGrid.	
	(self formGridFieldsIn: xmlGrid) do: [:fieldNode | | fieldDefinition fieldName |
		fieldName := self getNameFrom: fieldNode.
		fieldDefinition := FormFieldDefinition name: fieldName.
		fieldDefinition label: (anOrbeonPublishedFormDefinition labelAt: fieldName);
			bind: (fieldNode attributeAt: 'bind');
			type: (anOrbeonPublishedFormDefinition typeOf: fieldName);
			isSummary: (summary includes: fieldName);
			isSearch: (search includes: fieldName);
			isAttachmentField: (self isAttachmentField: fieldNode).
		aFormGridDefinition addFieldDefinition: fieldDefinition.
	]