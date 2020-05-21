charts and dashboards
usersChartsAndDashboardRepository

	UsersChartsAndDashboardRepository ifNil: [UsersChartsAndDashboardRepository := BIChartsDashboardsRepository newOn: self].

	^UsersChartsAndDashboardRepository