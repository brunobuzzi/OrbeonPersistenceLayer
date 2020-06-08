indexes-fields
rebuildAllIndexes
	"The receiver rebuild all existing indexes"

	fieldInstances keys do: [:eachFieldName |
	
		self rebuildIndexForFieldNamed: eachFieldName.

	].