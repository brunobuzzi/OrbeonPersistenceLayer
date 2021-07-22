other
createDistributionReport
	| application formDefinition |

	application := self systemRoot applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].
	^formDefinition reporFormDefinitionTypesDistribution