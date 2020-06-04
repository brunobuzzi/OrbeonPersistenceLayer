other
testIteratorOverEmptyV1
	| formDefinition |

	self application unregisterDefinitionNamed: 'iterator'.  "remove any previous form definitions and instances"

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 with: #formDefinition_iteratorV1 in: self application. "create the <OrbeonPublishedFormDefinition>"

	"page size = 10 and 16 forms"
	self createRegistryStreamsForVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (registryStreams contents size = 0).