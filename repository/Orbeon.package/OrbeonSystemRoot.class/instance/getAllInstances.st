forms - instances
getAllInstances
	| instances |

	instances := OrderedCollection new.
	self doInCache: [:each | instances addAll: each getAllInstances].

	^instances