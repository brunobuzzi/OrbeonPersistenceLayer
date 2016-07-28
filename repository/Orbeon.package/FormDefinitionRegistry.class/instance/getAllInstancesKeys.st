published definition
getAllInstancesKeys
	"The receiver answer all keys of all form instances"
	| allKeys |

	allKeys := OrderedCollection new.
	(currentVersions, oldVersions) do: [:each | allKeys addAll: each instances keys].

	^allKeys