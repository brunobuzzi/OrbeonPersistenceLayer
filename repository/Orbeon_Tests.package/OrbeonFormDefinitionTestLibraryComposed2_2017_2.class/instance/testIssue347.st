other
testIssue347
	| application form2 |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	form2 := application definitionNamed: 'library-composed-form' 
									ifNone: [self createFormStructureFor: 'library-composed-form' in: 'ue' definitionTemplate: #form_library_composed_form title: 'Test Section Library Composed Forms' xPathVersion: self getOrbeonXmlXpathFrom2017_2].

	form sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent ifTrue: [self assert: (eachSection sectionDefinition libraryComponent == eachSection)]].

	form2 sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent ifTrue: [self assert: (eachSection sectionDefinition libraryComponent == eachSection)]].