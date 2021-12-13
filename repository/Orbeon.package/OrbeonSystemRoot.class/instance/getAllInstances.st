forms - instances
getAllInstances
	| instances |

	instances := OrderedCollection new.
	self applicationsDo: [:each | instances addAll: each getAllInstances].

	^instances