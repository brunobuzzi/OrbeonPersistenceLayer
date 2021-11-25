other
saveChart

	distributionReport ifNil: [^self].

	self session systemRoot storeChart: distributionReport.