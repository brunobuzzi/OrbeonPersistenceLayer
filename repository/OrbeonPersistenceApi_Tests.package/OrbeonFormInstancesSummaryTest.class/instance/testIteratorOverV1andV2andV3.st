test
testIteratorOverV1andV2andV3
	| formDefinition id |

	id := UUID new asString.
	formDefinition := OrbeonSavedFormDefinition buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_iterator_v1 name: 'iterator' version: 1 id: id in: self application.

	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_iterator: each)
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

	formDefinition := OrbeonSavedFormDefinition buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_iterator_v2 name: 'iterator' version: 2 id: id in: self application.
	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_iterator: each surname: each)
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

	formDefinition := OrbeonSavedFormDefinition buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_iterator_v3 name: 'iterator' version: 3 id: id in: self application.
	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" keysAndValuesDo: [:key :each |
			OrbeonSavedFormDefinition buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_iterator: each surname: each number: key printString)
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