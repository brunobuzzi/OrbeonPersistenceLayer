forms - saved
getAllSavedDefinitions
	| all |

	all := OrderedCollection new.
	self applicationsDo: [:each | all addAll: each getAllSavedDefinitions].

	^all