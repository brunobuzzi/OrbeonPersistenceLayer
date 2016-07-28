Accessing
getSavedDefinitions

	^(savedDefinitions collect: [:each | each last]) asOrderedCollection