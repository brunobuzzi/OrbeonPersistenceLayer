other
setPropertiesTo: aBIChartDistribution

	aBIChartDistribution 
		applicationName: self getApplicationName;
		fieldName: self getFieldName;
		formName: self getFormName ;
		startDate: self getStartDate;
		endDate: self getEndDate ;
		version: self getVersion;
		queryBlock: self queryBlock.