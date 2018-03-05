other
setUp

	formOne := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: OrbeonFormDefinitionTemplate formDefinition_comparision_v1;
				processXMLDefinitionFor: OrbeonXmlPath2016_1 new;
				yourself.

	formTwo := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: OrbeonFormDefinitionTemplate formDefinition_comparision_v2;
				processXMLDefinitionFor: OrbeonXmlPath2016_1 new;
				yourself.