all forms
getAllSavedDefinitions
	| all |

	all := OrderedCollection new.
	definitionsRegistry do: [:each | all addAll: each getSavedDefinitions].

	clonedDefinitionsRegistry do: [:each | all addAll: each getSavedDefinitions].

	^all