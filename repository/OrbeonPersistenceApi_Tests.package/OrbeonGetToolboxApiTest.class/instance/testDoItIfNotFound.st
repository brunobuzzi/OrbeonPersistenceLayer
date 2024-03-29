other
testDoItIfNotFound
	| application form libraryXmlString |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructure].

	apiOperation headerValue: form version printString.

	libraryXmlString := apiOperation doItIfNotFound: [self assert: false].

	^self assert: (form xmlString = libraryXmlString)