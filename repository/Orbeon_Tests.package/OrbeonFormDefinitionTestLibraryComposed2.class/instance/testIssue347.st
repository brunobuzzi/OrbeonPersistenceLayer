tests
testIssue347
	| form2 allLibrarySections |

	form2 := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library_composed_form
							name: 'library-composed-form'
							version: 1 
							in: 'ue' 
							title: 'Issue 347'.

	allLibrarySections := Set new.

	form sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent 
											ifTrue: [allLibrarySections add: eachSection.
														self assert: (eachSection sectionDefinition includesLibraryComponent: eachSection)]].

	form2 sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent 
											ifTrue: [allLibrarySections add: eachSection.
														self assert: (eachSection sectionDefinition includesLibraryComponent: eachSection)]].

	allLibrarySections do: [:libSection | self assert: libSection isInRegistry]