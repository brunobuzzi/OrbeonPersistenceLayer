distribution report
reportValueDistributionForFieldName: fieldName secondaryField: secondaryField satisfying: formConditionBlock onError: errorHandler
	""
	| secondsToRun distributionArray |

	secondsToRun := Time secondsElapsedTime: [distributionArray := self getValueDistributionForFieldName2: fieldName secondaryField: secondaryField satisfying: formConditionBlock onError: errorHandler].
	
	^(OrbeonRecursiveFieldDistributionReport applicationName: self getApplicationName formName: self formName version: self version fieldName: fieldName distribution: distributionArray first)
			sumSecondsToConstruct: secondsToRun;
			addSubDistribution: distributionArray second;
			yourself