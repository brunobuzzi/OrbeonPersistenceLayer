other
createDistributionReport
	| application formDefinition |

	application := self getOrbeonApplicationClass applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].
	^formDefinition reporFormDefinitionTypesDistribution