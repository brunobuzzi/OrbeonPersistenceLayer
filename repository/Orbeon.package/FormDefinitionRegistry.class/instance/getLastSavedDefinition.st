saved definitions
getLastSavedDefinition
	"The receiver answer the last saved definition <anOrbeonFormInstanceDefinition>"

	savedDefinitions isEmpty ifTrue: [NoOrbeonFormException signal: 'There is no last saved definition'].

	^savedDefinitions last