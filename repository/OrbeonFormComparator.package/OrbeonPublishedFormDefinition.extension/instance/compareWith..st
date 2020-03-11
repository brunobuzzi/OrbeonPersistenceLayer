*orbeonFormComparator
compareWith: anOrbeonFormDefinition
	"The receiver is compared with form definition <anOrbeonFormDefinition>.
	Answer <anOrderedCollection> with the differences"

	^(FormDefinitionComparator formOne: self formTwo: anOrbeonFormDefinition) compare