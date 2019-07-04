published definition
getAllInstancesKeysOf: version
	"The receiver answer all keys of all form instances"
	| allKeys |

	allKeys := OrderedCollection new.
	((currentVersions, oldVersions) select: [:each | each version = version]) do: [:each | allKeys addAll: each instances keys].

	^allKeys