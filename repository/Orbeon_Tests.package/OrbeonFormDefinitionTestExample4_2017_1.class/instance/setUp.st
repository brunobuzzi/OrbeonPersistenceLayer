other
setUp

"	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_example4;
		id: self defaultFormId;
		title: 'Test';
		processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1."


	| anOrbeonApplication |

	anOrbeonApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := OrbeonSavedFormDefinition createDefinition: 'test' with: #form_example4 in: anOrbeonApplication title: 'Test' xPathVersion: self getOrbeonXmlXpathUpto2017_1