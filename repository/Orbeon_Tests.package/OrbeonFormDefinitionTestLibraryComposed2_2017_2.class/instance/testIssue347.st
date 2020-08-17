other
testIssue347
	| form2 allLibrarySections |

	form2 := application definitionNamed: 'library-composed-form' 
									ifNone: [self createFormStructureFor: 'library-composed-form' in: 'ue' definitionTemplate: #form_library_composed_form title: 'Test Section Library Composed Forms' xPathVersion: self getOrbeonXmlXpathFrom2017_2].

	allLibrarySections := Set new.

	form sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent 
											ifTrue: [allLibrarySections add: eachSection.
														self assert: (eachSection sectionDefinition includesLibraryComponent: eachSection)]].

	form2 sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent 
											ifTrue: [allLibrarySections add: eachSection.
														self assert: (eachSection sectionDefinition includesLibraryComponent: eachSection)]].

	allLibrarySections do: [:libSection | self assert: libSection isInRegistry]