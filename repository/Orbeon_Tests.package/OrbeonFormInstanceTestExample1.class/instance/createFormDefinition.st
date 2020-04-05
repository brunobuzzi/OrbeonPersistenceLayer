other
createFormDefinition

	^(OrbeonPublishedFormDefinition newNamed: 'test-all-types-2' inAppNamed: 'agesic')
			xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_all_types_2;
			id: UUID new asString;
			title: 'Test';
			processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1;
			yourself