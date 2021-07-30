tests
testComponentVersions
	| libId id library formV1 formV2 formV3 |

	id := UUID new asString.
	libId := UUID new asString.

	library := testRoot buildPublishedFormNamed: 'library' 
					id: libId
					version: 1
					title: 'Library' 
					withXml: self newDefinitionTemplate formDefinition_gs_library
					in: application.

	formV1 := testRoot buildPublishedFormNamed: 'library-library' 
					id: id
					version: 1
					title: 'Test Library' 
					withXml: self newDefinitionTemplate formDefinition_gs_issue_390_v1
					in: application.

	self assert: (formV1 libraryVersion = 1).
	formV1 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 1).
	].

	library := testRoot buildPublishedFormNamed: 'library' 
					id: libId
					version: 2
					title: 'Library' 
					withXml: self newDefinitionTemplate formDefinition_gs_library
					in: application.
	formV2 := testRoot buildPublishedFormNamed: 'library-library' 
					id: id
					version: 2
					title: 'Test Library' 
					withXml: self newDefinitionTemplate formDefinition_gs_issue_390_v2
					in: application.
	self assert: (formV2 libraryVersion = 2).
	formV2 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 2).
	].

	formV3 := testRoot buildPublishedFormNamed: 'library-library' 
					id: id
					version: 3
					title: 'Test Library' 
					withXml: self newDefinitionTemplate formDefinition_gs_issue_390_v3
					in: application.
	self assert: (formV3 libraryVersion = 1). "formV3 point to library version 1"
	formV3 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 1).
	].