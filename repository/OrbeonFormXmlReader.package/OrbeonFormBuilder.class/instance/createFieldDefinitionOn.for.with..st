build definition components
createFieldDefinitionOn: anOrbeonPublishedFormDefinition for: aFormSectionDefinition with: xmlSection
	"Populate receiver's section definition <aFormSectionDefinition> with Field Definition using <anOrbeonFormReader> on anXML element <xmlSection>"
	| search summary |

	summary := self summaryFormFieldsNameIn: xmlSection.
	search := self searchFormFieldsNameIn: xmlSection.	
	(self formFieldsIn: xmlSection) do: [:fieldNode | | fieldDefinition fieldName |
		fieldName := self getNameFrom: fieldNode.
		fieldDefinition := FormFieldDefinition name: fieldName.
		fieldDefinition label: (anOrbeonPublishedFormDefinition labelAt: fieldName);
			bind: (fieldNode attributeAt: 'bind');
			type: (anOrbeonPublishedFormDefinition typeOf: fieldName) ; "the possible fields types has been previously registered in <fieldsType>"
			isSummary: (summary includes: fieldName);
			isSearch: (search includes: fieldName);
			isAttachmentField: (self isAttachmentField: fieldNode);
			isAnnotationField: (self isAnnotationField: fieldNode).
		aFormSectionDefinition addFieldDefinition: fieldDefinition.
	]