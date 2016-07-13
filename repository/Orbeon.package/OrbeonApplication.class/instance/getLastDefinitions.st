published forms
getLastDefinitions
	"The receiver answer a collection with the latest version of all registered form definitions"

	^((definitionRegistry select: [:each | each hasVersions]) collect: [:each | each getLastVersion]) select: [:each | each deleted = 'N']