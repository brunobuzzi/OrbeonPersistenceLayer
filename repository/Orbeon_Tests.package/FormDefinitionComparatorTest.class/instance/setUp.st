other
setUp

	formOne := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self defaultForm1FormDefinition;
				processXMLDefinitionFor: self defaultOrbeonXpathVersion;
				yourself.

	formTwo := OrbeonPublishedFormDefinition new
				id: 'sldfjlsajfd-asfdlaslfdj-asd4f6a4sdf6';
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self defaultForm2FormDefinition;
				processXMLDefinitionFor: self defaultOrbeonXpathVersion;
				yourself.