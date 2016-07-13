saved forms
getSavedDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer <anOrbeonFormInstanceDefinition> with id <stringId> if none evaluate the block <aBlock>"
	| registry |

	registry := definitionRegistry detect: [:eachReg | eachReg includesSavedDefinitionWithId: stringId] ifNone: [^aBlock value].

	^registry getSavedDefinitionWithId: stringId ifNone: aBlock