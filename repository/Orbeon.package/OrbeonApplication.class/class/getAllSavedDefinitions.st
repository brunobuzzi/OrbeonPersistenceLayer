all forms
getAllSavedDefinitions
	| all |

	all := OrderedCollection new.
	self getOrbeonCache do: [:each | all addAll: each getAllSavedDefinitions].

	^all