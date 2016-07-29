process xml
createGridFieldDefinitionFor: aFormGridDefinition reader: anOrbeonFormReader with: xmlGrid
	"Populate receiver's grid definition <aFormGridDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlGrid>"
	| search summary |

	summary := anOrbeonFormReader summaryFormFieldsNameIn: xmlGrid.
	search := anOrbeonFormReader searchFormFieldsNameIn: xmlGrid.	
	(anOrbeonFormReader formGridFieldsNameIn: xmlGrid) do: [:fieldName | | fieldDefinition |
		fieldDefinition := FormFieldDefinition name: fieldName.
		fieldDefinition label: (labels at: fieldName ifAbsent: ['']);
			type: (fieldsType at: fieldName ifAbsent: ['']);
			isSummary: (summary includes: fieldName);
			isSearch: (search includes: fieldName).
		aFormGridDefinition addFieldDefinition: fieldDefinition.
	]