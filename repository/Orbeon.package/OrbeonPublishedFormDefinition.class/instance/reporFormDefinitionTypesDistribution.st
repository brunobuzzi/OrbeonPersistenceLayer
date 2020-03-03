distribution report
reporFormDefinitionTypesDistribution
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getFieldTypesQuantity].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		sumSecondsToConstruct: secondsToRun;
		yourself