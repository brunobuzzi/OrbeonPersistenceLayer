other
logicalRemoveDefinitionWithId: stringId ifNone: aBlock
	| instanceDefinition |

	instanceDefinition := self getSavedDefinitionWithId: stringId ifNone: [^aBlock value].

	instanceDefinition logicalDelete. "delete the OrbeonFormInstanceDefinition"

	^instanceDefinition definition logicalDelete.  "delete the OrbeonFormDefinition"