process xml
createGridFieldDefinitionFor: aFormGridDefinition reader: anOrbeonFormReader with: xmlGrid
	"Populate receiver's grid definition <aFormGridDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlGrid>"
	| search summary |

	summary := anOrbeonFormReader summaryFormFieldsNameIn: xmlGrid.
	search := anOrbeonFormReader searchFormFieldsNameIn: xmlGrid.	
	(anOrbeonFormReader formGridFieldsIn: xmlGrid) do: [:fieldNode | | fieldDefinition fieldName |
		fieldName := anOrbeonFormReader getNameFrom: fieldNode.
		fieldDefinition := FormFieldDefinition name: fieldName.
		fieldDefinition label: (labels at: fieldName ifAbsent: ['']);
			bind: (fieldNode attributeAt: 'bind');
			type: (fieldsType at: fieldName ifAbsent: ['']);
			isSummary: (summary includes: fieldName);
			isSearch: (search includes: fieldName);
			isAttachmentField: (anOrbeonFormReader isAttachmentField: fieldNode).
		aFormGridDefinition addFieldDefinition: fieldDefinition.
	]