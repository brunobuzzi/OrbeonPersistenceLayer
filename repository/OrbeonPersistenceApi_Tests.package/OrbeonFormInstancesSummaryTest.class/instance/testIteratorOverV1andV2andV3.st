test
testIteratorOverV1andV2andV3
	| id savedDefinition publishedDefinition |

	id := UUID new asString.
	savedDefinition := testRoot 
									buildSavedFormNamed: 'iterator' 
									id: id 
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


	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		self defaultSavedFormDefinitionClass buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_iterator: each)
													definitionNamed: 'iterator' 
													definitionXml: self newDefinitionTemplate formDefinition_ue_iterator_v1
													app: self application 
	].

	"page size = 10 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).
	self createSummaryVersion: 1 pageNumber: 2 pageSize: 10.
	self assert: (summary contents size = 6).

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

	savedDefinition := testRoot 
									buildSavedFormNamed: 'iterator' 
									id: id 
									version: 2 
									title: 'Iterator' 
									withXml: self newDefinitionTemplate formDefinition_ue_iterator_v2   
									in: self application.


	publishedDefinition := testRoot
									buildPublishedFormNamed: 'iterator' 
									id: id 
									version: 2 
									title: 'Iterator' 
									withXml: self newDefinitionTemplate formDefinition_ue_iterator_v2   
									in: self application.
	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		self defaultSavedFormDefinitionClass buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_iterator: each surname: each)
													definitionNamed: 'iterator' 
													definitionXml: self newDefinitionTemplate formDefinition_ue_iterator_v2
													app: self application 
	].

	self assert: (summary getAllVersions size = 2).

	"page size = 10 and 16 forms - version: 2"
	self createSummaryVersion: 2 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).

	"page size = 10 and 16 forms - version: 1"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).

	"page size = 16 and 16 forms - version 2"
	self createSummaryVersion: 2 pageNumber: 1 pageSize: 16.
	self assert: (summary contents size = 16).

	"page size = 16 and 16 forms - version 1"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 16.
	self assert: (summary contents size = 16).

	savedDefinition := testRoot 
									buildSavedFormNamed: 'iterator' 
									id: id 
									version: 3 
									title: 'Iterator' 
									withXml: self newDefinitionTemplate formDefinition_ue_iterator_v3   
									in: self application.


	publishedDefinition := testRoot
									buildPublishedFormNamed: 'iterator' 
									id: id 
									version: 3 
									title: 'Iterator' 
									withXml: self newDefinitionTemplate formDefinition_ue_iterator_v3   
									in: self application.

	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" keysAndValuesDo: [:key :each |
			self defaultSavedFormDefinitionClass buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_iterator: each surname: each number: key printString)
														definitionNamed: 'iterator' 
														definitionXml: self newDefinitionTemplate formDefinition_ue_iterator_v3
														app: self application
	].

	self assert: (summary getAllVersions size = 3).

	"page size = 10 and 16 forms - version: 3"
	self createSummaryVersion: 3 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).

	"page size = 10 and 16 forms - version: 2"
	self createSummaryVersion: 2 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).

	"page size = 10 and 16 forms - version: 1"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).

	"page size = 10 and 16 forms - version: 3"
	self createSummaryVersion: 3 pageNumber: 1 pageSize: 15.
	self assert: (summary contents size = 15).
	self createSummaryVersion: 3 pageNumber: 4 pageSize: 15.
	self assert: (summary contents size = 0).