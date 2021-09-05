system setUp
initialize

	super initialize.

	serverConfiguration := OrbeonServerConfiguration new.
	databaseConfiguration := OrbeonDatabaseConfiguration new.
	applications := Dictionary new.
	usersChartsAndDashboardRepository := BIChartsDashboardsRepository newOn: self.
	dataFormatVersion := OrbeonDataFormat2019_1_0 new.