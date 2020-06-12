all forms
getAllInstances
	| instances |

	instances := OrderedCollection new.
	self doInOrbeonCache: [:each | instances addAll: each getAllInstances].

	^instances