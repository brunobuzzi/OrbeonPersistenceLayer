other
testComponentVersions
	| libId library formV1 formV2 formV3 |

	libId := UUID new asString.
	library := self createFormStructureFor: 'library' 
							version: 1 
							id: libId
							in: 'gs' 
							definitionTemplate: #formDefinition_gs_library 
							title: 'Library' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.
	formV1 := self createFormStructureFor: 'test-library' 
							version: 1 
							id: self defaultFormId 
							in: 'gs' 
							definitionTemplate: #formDefinition_issue390_v1 
							title: 'Issue 390' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.
	self assert: (formV1 libraryVersion = 1).
	formV1 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 1).
	]. 

	library := self createFormStructureFor: 'library' 
							version: 2 
							id: libId
							in: 'gs' 
							definitionTemplate: #formDefinition_gs_library 
							title: 'Library' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.
	formV2 := self createFormStructureFor: 'test-library' 
							version: 2
							id: self defaultFormId 
							in: 'gs' 
							definitionTemplate: #formDefinition_issue390_v2 
							title: 'Issue 390' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.
	self assert: (formV2 libraryVersion = 2).
	formV2 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 2).
	]. 

	formV3 := self createFormStructureFor: 'test-library' 
							version: 3
							id: self defaultFormId 
							in: 'gs' 
							definitionTemplate: #formDefinition_issue390_v3 
							title: 'Issue 390' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.

	self assert: (formV3 libraryVersion = 1). "formV3 point to library version 1"
	formV3 sectionDefinitionsDo: [:secDefinition | 
		self assert: (secDefinition publishedComponentVersion = 1).
	].