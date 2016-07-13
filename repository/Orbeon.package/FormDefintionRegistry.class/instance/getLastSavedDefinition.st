saved definitions
getLastSavedDefinition
	"The receiver answer the last saved definition <anOrbeonFormInstanceDefinition>"

	^savedDefinitions isEmpty
		ifFalse: [savedDefinitions values last isEmpty "answer anOrderedCollection with all saved definitions"
					ifFalse: [savedDefinitions values last last] "the last element of the last OrderedCollection"
					ifTrue: [NoOrbeonFormException signal: 'There is no last saved definition']]	
		ifTrue: [NoOrbeonFormException signal: 'There is no last saved definition']