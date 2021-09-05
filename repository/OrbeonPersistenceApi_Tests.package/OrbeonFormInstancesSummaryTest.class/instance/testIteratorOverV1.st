test
testIteratorOverV1
	| savedDefinition publishedDefinition |

	savedDefinition := testRoot 
									buildSavedFormNamed: 'iterator' 
									id: UUID new asString 
									version: 1 
									title: 'Iterator' 
									withXml: testRoot newDefinitionTemplate formDefinition_ue_iterator_v1   
									in: self application.

	publishedDefinition := testRoot
									buildPublishedFormNamed: 'iterator' 
									id: savedDefinition id 
									version: 1 
									title: 'Iterator' 
									withXml: testRoot newDefinitionTemplate formDefinition_ue_iterator_v1   
									in: self application.

	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		self defaultSavedFormDefinitionClass buildFormInstanceFrom: (testRoot newInstanceTemplate formInstance_ue_iterator: each)
													definitionNamed: 'iterator' 
													definitionXml: testRoot newDefinitionTemplate formDefinition_ue_iterator_v1
													app: self application 
	].

	"page size = 10 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).

	"page size = 5 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 5.
	self assert: (summary contents size = 5).
	self createSummaryVersion: 1 pageNumber: 2 pageSize: 5.
	self assert: (summary contents size = 5).
	self createSummaryVersion: 1 pageNumber: 3 pageSize: 5.
	self assert: (summary contents size = 5).
	self createSummaryVersion: 1 pageNumber: 4 pageSize: 5.
	self assert: (summary contents size = 1).

	"page size = 7 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 7.
	self assert: (summary contents size = 7).
	self createSummaryVersion: 1 pageNumber: 2 pageSize: 7.
	self assert: (summary contents size = 7).
	self createSummaryVersion: 1 pageNumber: 3 pageSize: 7.
	self assert: (summary contents size = 2).

	"page size = 15 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 15.
	self assert: (summary contents size = 15).
	self createSummaryVersion: 1 pageNumber: 2 pageSize: 15.
	self assert: (summary contents size = 1).

	"page size = 16 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 16.
	self assert: (summary contents size = 16).