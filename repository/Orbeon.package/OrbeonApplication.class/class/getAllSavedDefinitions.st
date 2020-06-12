all forms
getAllSavedDefinitions
	| all |

	all := OrderedCollection new.
	self doInOrbeonCache: [:each | all addAll: each getAllSavedDefinitions].

	^all