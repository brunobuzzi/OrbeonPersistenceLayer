logical remove
logicalRemoveDefinitionWithId: stringId ifNone: aBlock
	| savedDefinition |

	savedDefinition := self getSavedDefinitionWithId: stringId ifNone: [^aBlock value].

	savedDefinition logicalDelete. "delete the OrbeonFormInstanceDefinition"

	^savedDefinition definition logicalDelete.  "delete the OrbeonFormDefinition"