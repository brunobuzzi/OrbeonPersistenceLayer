distribution report
reporFormDefinitionTypesDistribution
	| distribution secondsToRun |

	secondsToRun := Time secondsElapsedTime: [distribution := self getFieldTypesQuantity].

	^(OrbeonPublishedFormDistributionReport applicationName: self applicationName formName: formName version: self version distribution: distribution)
		name: 'Quantity Form Definition Field Types';
		description: 'Display the number of field types of the selected Form Definition';
		xTitle: 'Field Type';
		yTitle: 'Numbers of Fields';
		sumSecondsToConstruct: secondsToRun;
		yourself