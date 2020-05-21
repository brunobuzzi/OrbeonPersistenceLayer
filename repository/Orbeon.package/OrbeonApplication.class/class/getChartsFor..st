charts and dashboards
getChartsFor: anOrbeonUser
	"The receiver answer a collection of <BIChartDefinition> for the user <anOrbeonUser>"

	^self usersChartsAndDashboardRepository getChartsFor: anOrbeonUser