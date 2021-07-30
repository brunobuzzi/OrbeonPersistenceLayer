test
testIteratorOverEmptyV1
	| savedDefinition publishedDefinition |

	savedDefinition := testRoot 
									buildSavedFormNamed: 'iterator' 
									id: UUID new asString 
									version: 1 
									title: 'Iterator' 
									withXml: self newDefinitionTemplate formDefinition_ue_iterator_v1   
									in: self application.

	publishedDefinition := testRoot
									buildPublishedFormNamed: 'iterator' 
									id: savedDefinition id 
									version: 1 
									title: 'Iterator' 
									withXml: self newDefinitionTemplate formDefinition_ue_iterator_v1   
									in: self application.

	"page size = 10 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 0).