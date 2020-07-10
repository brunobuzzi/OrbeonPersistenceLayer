other
testDoItIfNotFound
	| application form libraryXmlString |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: self getOrbeonXmlXpathFrom2017_2].

	apiOperation headerValue: form version printString.

	libraryXmlString := apiOperation doItIfNotFound: [self assert: false].

	^self assert: (form xmlString = libraryXmlString)