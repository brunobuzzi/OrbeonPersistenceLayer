distribution report
reportValueDistributionForFieldName: fieldName secondaryField: secondaryField
	""
	| secondsToRun distributionArray |

	secondsToRun := Time secondsElapsedTime: [distributionArray := self getValueDistributionForFieldName2: fieldName secondaryField: secondaryField].
	
	^(OrbeonRecursiveFieldDistributionReport applicationName: self getApplicationName formName: self formName version: self version fieldName: fieldName distribution: distributionArray first)
			sumSecondsToConstruct: secondsToRun;
			addSubDistribution: distributionArray second;
			yourself