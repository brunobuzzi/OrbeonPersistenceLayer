forms - published
getAllFormDefinitions
	| definitions |

	definitions := OrderedCollection new.
	self applicationsDo: [:each | definitions addAll: each getAllDefinitions].

	^definitions