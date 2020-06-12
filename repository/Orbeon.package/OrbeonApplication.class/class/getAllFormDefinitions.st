all forms
getAllFormDefinitions
	| definitions |

	definitions := OrderedCollection new.
	self doInOrbeonCache: [:each | definitions addAll: each getAllDefinitions].

	^definitions