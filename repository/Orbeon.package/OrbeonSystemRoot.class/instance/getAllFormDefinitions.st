forms - published
getAllFormDefinitions
	| definitions |

	definitions := OrderedCollection new.
	self doInCache: [:each | definitions addAll: each getAllDefinitions].

	^definitions