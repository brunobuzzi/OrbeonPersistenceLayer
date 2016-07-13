all forms
getAllSavedDefinitions
	| all |

	all := OrderedCollection new.
	definitionRegistry do: [:each | all addAll: each getSavedDefinitions].

	^all