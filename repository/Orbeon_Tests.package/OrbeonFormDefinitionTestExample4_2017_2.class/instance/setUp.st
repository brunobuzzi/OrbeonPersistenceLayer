other
setUp

"	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_example4;
		id: self defaultFormId;
		title: 'Test';
		processXMLDefinitionFor: self getOrbeonXmlXpathFrom2017_2."

	| anOrbeonApplication |

	anOrbeonApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := OrbeonSavedFormDefinition createDefinition: 'test' with: #form_example4 in: anOrbeonApplication title: 'Test' xPathVersion: self getOrbeonXmlXpathFrom2017_2