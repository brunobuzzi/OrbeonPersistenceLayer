distribution by fields
reportValueDistributionFor: fieldName satisfying: formConditionBlock
	""
	| secondsToRun blockFilteredCollection |

	secondsToRun := Time secondsElapsedTime: [blockFilteredCollection := (self fieldInstancesOf: fieldName) select: [:fieldInst | formConditionBlock value: fieldInst parentObject]].

	^(self reportValueDistributionForFieldCollection: blockFilteredCollection)
		conditionStringBlock: blockFilteredCollection blockSource;
		sumSecondsToConstruct: secondsToRun;
		yourself