test
testIteratorOverV1with2definitions
	| formDefinition |

	self application unregisterDefinitionNamed: 'iterator'.  "remove any previous form definitions and instances"

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 with: #formDefinition_iteratorV1 in: self application. "create the <OrbeonPublishedFormDefinition>"

	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v1_name: withValues: (Array with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV1.
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

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 with: #formDefinition_iteratorV1 in: self application. "create the <OrbeonPublishedFormDefinition>"
	"create 8 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('albert' 'bruce' 'carl' 'denis' 'emmanuel' 'jules' 'larry' 'maurice')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v1_name: withValues: (Array with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV1.
	].

	self assert: (summary getAllVersion size = 2).
	"page size = 10 and 24 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 10).

	"page size = 8 and 24 forms"
	self createSummaryVersion: 1 pageNumber: 2 pageSize: 8.
	self assert: (summary contents size = 8).
	self createSummaryVersion: 1 pageNumber: 3 pageSize: 8.
	self assert: (summary contents size = 8).

	"page size = 4 and 24 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 4.
	self assert: (summary contents size = 4).
	self createSummaryVersion: 1 pageNumber: 5 pageSize: 4.
	self assert: (summary contents size = 4).