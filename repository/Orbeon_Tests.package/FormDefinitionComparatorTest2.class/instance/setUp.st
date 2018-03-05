other
setUp

	formOne := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'test';
				xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_withAllField_Types_no_Attachements_01;
				processXMLDefinitionFor: OrbeonXmlPath2016_1 new;
				yourself.

	formTwo := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'test';
				xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_withAllField_Types_no_Attachements_02;
				processXMLDefinitionFor: OrbeonXmlPath2016_1 new;
				yourself.