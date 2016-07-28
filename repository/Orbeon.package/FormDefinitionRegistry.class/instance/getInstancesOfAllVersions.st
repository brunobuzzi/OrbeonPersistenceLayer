published def instances
getInstancesOfAllVersions
	| instances |

	instances := OrderedCollection new.

	currentVersions do: [:each | instances addAll: each instances].
	oldVersions do: [:each | instances addAll: each instances].

	^instances