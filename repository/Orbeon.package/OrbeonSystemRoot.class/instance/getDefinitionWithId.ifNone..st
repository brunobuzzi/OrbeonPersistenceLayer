forms - published
getDefinitionWithId: stringId ifNone: aBlock
	| application |

	application := applications detect: [:eachApp | (eachApp getDefinitionWithId: stringId ifNone: [nil]) notNil] ifNone: [^aBlock value].

	^application getDefinitionWithId: stringId ifNone: aBlock