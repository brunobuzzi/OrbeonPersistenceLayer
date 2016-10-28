distribution report
reportValueDistributionForFieldName: fieldName secondaryField: secondaryField satisfying: formConditionBlock
	""
	| secondsToRun distributionArray |

	secondsToRun := Time secondsElapsedTime: [distributionArray := self getValueDistributionForFieldName2: fieldName secondaryField: secondaryField satisfying: formConditionBlock].
	
	^(OrbeonRecursiveFieldDistributionReport applicationName: self getApplicationName formName: self formName version: self version fieldName: fieldName distribution: distributionArray first)
			sumSecondsToConstruct: secondsToRun;
			addSubDistribution: distributionArray second;
			yourself