tests
testIssue347
	| form2 allLibrarySections |

	form2 := self buildPublishedFormStructureFrom: testRoot newDefinitionTemplate formDefinition_ue_library_composed_form  
					savedXml: testRoot newDefinitionTemplate formSavedDefinition_ue_library_composed_form
					name: 'library-composed-form' 
					version: 1 
					id: UUID new asString 
					in: 'ue' 
					title: 'Test Section Library Composed Forms'.


	allLibrarySections := Set new.

	form sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent 
											ifTrue: [allLibrarySections add: eachSection.
														self assert: (eachSection sectionDefinition includesLibraryComponent: eachSection)]].

	form2 sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent 
											ifTrue: [allLibrarySections add: eachSection.
														self assert: (eachSection sectionDefinition includesLibraryComponent: eachSection)]].

	allLibrarySections do: [:libSection | self assert: libSection isInRegistry]