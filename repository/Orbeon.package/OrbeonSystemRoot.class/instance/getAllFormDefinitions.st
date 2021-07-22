charts
getAllFormDefinitions
	| definitions |

	definitions := OrderedCollection new.
	applications do: [:application | definitions addAll: application getAllDefinitions].

	^definitions