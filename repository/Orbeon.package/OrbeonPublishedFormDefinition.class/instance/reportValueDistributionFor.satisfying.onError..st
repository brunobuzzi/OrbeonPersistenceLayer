distribution report
reportValueDistributionFor: fieldName satisfying: formConditionBlock onError: errorHandler
	""
	| secondsToRun blockFilteredCollection |

	secondsToRun := Time secondsElapsedTime: [blockFilteredCollection := (self fieldInstancesOf: fieldName) select: [:fieldInst | formConditionBlock value: fieldInst parentObject]].

	^(self reportValueDistributionForFieldCollection: blockFilteredCollection)
		conditionStringBlock: blockFilteredCollection blockSource;
		sumSecondsToConstruct: secondsToRun;
		yourself