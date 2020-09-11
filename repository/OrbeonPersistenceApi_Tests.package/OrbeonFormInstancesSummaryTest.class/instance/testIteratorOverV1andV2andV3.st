test
testIteratorOverV1andV2andV3
	| formDefinition id |

	id := UUID new asString.
	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 id: id with: #formDefinition_iteratorV1 in: self application. "create the <OrbeonPublishedFormDefinition>"

	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v1_name: withValues: (Array with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV1.
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

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 2 id: id with: #formDefinition_iteratorV2 in: self application. "create the <OrbeonPublishedFormDefinition>"
	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v2_name:surname: withValues: (Array with: each with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV2.
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

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 3 id: id with: #formDefinition_iteratorV3 in: self application. "create the <OrbeonPublishedFormDefinition>"
	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" keysAndValuesDo: [:key :each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v3_name:surname:number: withValues: (Array with: each with: each with: key printString) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV3.
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