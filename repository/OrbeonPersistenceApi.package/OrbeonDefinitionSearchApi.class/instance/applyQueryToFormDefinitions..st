other
applyQueryToFormDefinitions: anOrderedCollection
	"The receiver apply the query contained in xml document <xmlDocument> to the OrbeonFormInstanceDefinition in the collection <anOrderedCollection>"
	| queryFields result |

	queryFields := Dictionary new. "dictionary with the criteria to search"
	result := anOrderedCollection select: [:each | each deleted = 'N']. "exclude deleted definitions"

	queryNodes := (xmlSearchDefinitionDocument allElementsNamed: 'query') do: [:node | "get the criteria from <xmlDocument>"
		node strings notEmpty ifTrue: [queryFields at: (node attributeAt: 'name') put: node strings last]].

	"apply all available criteria to the result collection <result>"
	queryFields keysAndValuesDo: [:key :value |
		(key = 'application-name') ifTrue: [result := result select: [:each | each getApplicationName = (queryFields at: 'application-name')]].
		(key = 'form-name') ifTrue: [result := result select: [:each | each formName = (queryFields at: 'form-name')]].
		(key = 'title') ifTrue: [result := result select: [:each | each title = (queryFields at: 'title')]].
		(key = 'description') ifTrue: [result := result select: [:each | each description = (queryFields at: 'description')]].
	].

	^resultCollection := result