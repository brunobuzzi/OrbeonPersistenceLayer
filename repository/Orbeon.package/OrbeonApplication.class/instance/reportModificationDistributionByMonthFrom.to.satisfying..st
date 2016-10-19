distribution
reportModificationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock
	| secondsToRun distribution |

	secondsToRun := Time secondsElapsedTime: [distribution := self getInstancesModificationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock].

	^(OrbeonApplicationDistributionReport applicationName: applicationName distribution: distribution)
			startDate: startDate;
			endDate: endDate;
			conditionStringBlock: formConditionBlock blockSource;
			distributionMethod: #modifiedTime;
			sumSecondsToConstruct: secondsToRun;
			yourself