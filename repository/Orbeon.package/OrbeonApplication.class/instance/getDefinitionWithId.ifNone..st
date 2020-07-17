published forms
getDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer anOrbeonFormDefinition with id <stringId> if none evaluates the block <aBlock>.
	1- Goes over all FormDefinitionRegistry of the receiver asking if contains the id <stringId>.
	2- Use the registry the get the form definition"
	| registry |

	registry := definitionsRegistry detect: [:eachReg | (eachReg getDefinitionWithId: stringId ifNone: [nil]) notNil] ifNone: [^aBlock value].

	^registry getDefinitionWithId: stringId ifNone: aBlock