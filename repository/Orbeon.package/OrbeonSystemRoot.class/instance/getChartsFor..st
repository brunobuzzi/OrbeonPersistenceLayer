charts
getChartsFor: anOrbeonUser
	"The receiver answer a collection of <BIChartDefinition> for the user <anOrbeonUser>"

	^usersChartsAndDashboardRepository getChartsFor: anOrbeonUser