process xml
createFieldDefinitionFor: aFormSectionDefinition reader: anOrbeonFormReader with: xmlSection
	"Populate receiver's section definition <aFormSectionDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlSection>"
	| search summary |

	summary := anOrbeonFormReader summaryFormFieldsNameIn: xmlSection.
	search := anOrbeonFormReader searchFormFieldsNameIn: xmlSection.	
	(anOrbeonFormReader formFieldsIn: xmlSection) do: [:fieldNode | | fieldDefinition fieldName |
		fieldName := anOrbeonFormReader getNameFrom: fieldNode.
		fieldDefinition := FormFieldDefinition name: fieldName.
		fieldDefinition label: (labels at: fieldName ifAbsent: ['']);
			type: (fieldsType at: fieldName ifAbsent: ['']);
			isSummary: (summary includes: fieldName);
			isSearch: (search includes: fieldName);
			isAttachmentField: (anOrbeonFormReader isAttachmentField: fieldNode).
		aFormSectionDefinition addFieldDefinition: fieldDefinition.
	]