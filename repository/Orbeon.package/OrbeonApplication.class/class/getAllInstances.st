all forms
getAllInstances
	| instances |

	instances := OrderedCollection new.
	self getOrbeonCache do: [:each | instances addAll: each getAllInstances].

	^instances