test
testIteratorOverEmptyV1
	| savedDefinition publishedDefinition |

	savedDefinition := self defaultSavedFormDefinitionClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_iterator_v1 name: 'iterator' version: 1 id: UUID new asString in: self application.
	publishedDefinition := self defaultPublishedFormDefinitionClass buildDefinitionFrom: self newDefinitionTemplate formDefinition_ue_iterator_v1 name: 'iterator' version: 1 id: savedDefinition id in: self application.

	"page size = 10 and 16 forms"
	self createSummaryVersion: 1 pageNumber: 1 pageSize: 10.
	self assert: (summary contents size = 0).