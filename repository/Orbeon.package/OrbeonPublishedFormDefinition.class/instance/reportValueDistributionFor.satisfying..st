distribution by fields
reportValueDistributionFor: fieldName satisfying: formConditionBlock
	""
	| blockFilteredCollection |

	blockFilteredCollection := (self fieldInstancesOf: fieldName) select: [:fieldInst | formConditionBlock value: fieldInst parentObject].

	^(self reportValueDistributionForFieldCollection: blockFilteredCollection)
		conditionStringBlock: blockFilteredCollection blockSource;
		yourself