other
getDefinitionWithId: stringId ifNone: aBlock
	| application |

	application := self getOrbeonCache detect: [:eachApp | (eachApp getDefinitionWithId: stringId ifNone: [nil]) notNil] ifNone: [^aBlock value].

	^application getDefinitionWithId: stringId ifNone: aBlock