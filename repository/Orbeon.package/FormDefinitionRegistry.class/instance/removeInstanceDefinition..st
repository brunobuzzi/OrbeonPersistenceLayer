saved definitions
removeInstanceDefinition: anOrbeonFormInstanceDefinition
	| savedCollection |

	savedCollection := savedDefinitions at: anOrbeonFormInstanceDefinition id ifAbsent: [^anOrbeonFormInstanceDefinition].

	^savedCollection remove: anOrbeonFormInstanceDefinition ifAbsent: []