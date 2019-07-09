test
testIteratorOverEmptyV1
	| formDefinition |

	self application unregisterDefinitionNamed: 'iterator'.  "remove any previous form definitions and instances"

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 with: #formDefinition_iteratorV1 in: self application. "create the <OrbeonPublishedFormDefinition>"

	"page size = 10 and 16 forms"
	iterator := self newIteratorForVersion: 1.
	iterator fromIndex: 1; toIndex: 10.
	self assert: (iterator getCollection size = 0).