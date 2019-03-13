other
createFormDefinitionNamed: formName in: applicationName title: aString withTemplateMethod: aSymbol
	| application xPathManager |

	xPathManager := self getOrbeonXmlXpathFrom2017_2.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: applicationName.
	form := application 
					definitionNamed: formName 
					ifNone: [self createFormStructureFor: formName in: 'dne' definitionTemplate: aSymbol title: aString xPathVersion: xPathManager].

	form xmlString: (OrbeonFormDefinitionTemplateFrom2017_2 perform: aSymbol);
		title: aString.

	form processXMLDefinitionFor: xPathManager.

	^form