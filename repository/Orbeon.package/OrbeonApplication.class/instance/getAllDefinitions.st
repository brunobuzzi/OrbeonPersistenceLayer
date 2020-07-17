all forms
getAllDefinitions
	"The receiver answer anOrderedCollection with all OrbeonFormDefinition.
	Iterate over all definition registry asking all versions"
	| all |

	all := OrderedCollection new.
	(definitionsRegistry select: [:each | each hasVersions]) do: [:each | all addAll: each getAllVersion].

	^all