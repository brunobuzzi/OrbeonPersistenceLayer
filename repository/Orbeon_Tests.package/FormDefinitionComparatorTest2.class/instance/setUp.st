other
setUp

	formOne := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'test';
				xmlString: OrbeonFormDefinitionTemplate form_withAllField_Types_no_Attachements_01;
				processXMLDefinition;
				yourself.

	formTwo := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'test';
				xmlString: OrbeonFormDefinitionTemplate form_withAllField_Types_no_Attachements_02;
				processXMLDefinition;
				yourself.