tests
testComponentVersions
	| libId id library formV1 formV2 formV3 |

	id := UUID new asString.
	libId := UUID new asString.

	library := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_gs_library
							name: 'library'
							version: 1 
							id: libId
							in: 'gs' 
							title: 'Library'.
	formV1 := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_gs_issue_390_v1
							name: 'test-library'
							version: 1 
							id: id
							in: 'gs' 
							title: 'Test Library'.
	self assert: (formV1 libraryVersion = 1).
	formV1 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 1).
	].

	library := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_gs_library
							name: 'library'
							version: 2 
							id: libId
							in: 'gs' 
							title: 'Library'.
	formV2 := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_gs_issue_390_v2
							name: 'test-library'
							version: 2
							id: id
							in: 'gs' 
							title: 'Test Library'.
	self assert: (formV2 libraryVersion = 2).
	formV2 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 2).
	].

	formV3 := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_gs_issue_390_v3
							name: 'test-library'
							version: 3
							id: id
							in: 'gs' 
							title: 'Test Library'.
	self assert: (formV3 libraryVersion = 1). "formV3 point to library version 1"
	formV3 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 1).
	].