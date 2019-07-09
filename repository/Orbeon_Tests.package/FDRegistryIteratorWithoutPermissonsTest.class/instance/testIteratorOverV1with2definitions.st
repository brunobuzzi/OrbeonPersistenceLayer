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
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 1; toIndex: 10.
	self assert: (iterator getCollection size = 10).
	"page size = 5 and 16 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 1; toIndex: 5.
	self assert: (iterator getCollection size = 5).
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 6; toIndex: 10.
	self assert: (iterator getCollection size = 5).
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 11; toIndex: 15.
	self assert: (iterator getCollection size = 5).
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 16; toIndex: 16.
	self assert: (iterator getCollection size = 1).

	"page size = 7 and 16 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 1; toIndex: 7.
	self assert: (iterator getCollection size = 7).
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 8; toIndex: 14.
	self assert: (iterator getCollection size = 7).
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 15; toIndex: 16.
	self assert: (iterator getCollection size = 2).
	self assert: (iterator nextObject isNil).

	"page size = 15 and 16 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 1; toIndex: 15.
	self assert: (iterator getCollection size = 15).
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 16; toIndex: 16.
	self assert: (iterator getCollection size = 1).
	self assert: (iterator nextObject isNil).

	"page size = 16 and 16 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 16).
	self assert: (iterator nextObject isNil).
	self assert: (iterator nextObject isNil).

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 with: #formDefinition_iteratorV1 in: self application. "create the <OrbeonPublishedFormDefinition>"
	"create 8 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('albert' 'bruce' 'carl' 'denis' 'emmanuel' 'jules' 'larry' 'maurice')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v1_name: withValues: (Array with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV1.
	].

	self assert: (iterator definitionRegistry getAllVersion size = 2).
	"page size = 10 and 24 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 1; toIndex: 10.
	self assert: (iterator getCollection size = 10).

	"page size = 8 and 24 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 17; toIndex: 24.
	self assert: (iterator getCollection size = 8).

	"page size = 4 and 24 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 17; toIndex: 20.
	self assert: (iterator getCollection size = 4).
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 21; toIndex: 24.
	self assert: (iterator getCollection size = 4).
	self assert: (iterator nextObject isNil).