all forms
getAllFormDefinitions
	| definitions |

	definitions := OrderedCollection new.
	self getOrbeonCache do: [:each | definitions addAll: each getAllDefinitions].

	^definitions