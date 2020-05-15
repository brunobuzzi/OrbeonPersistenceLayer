chart settings
setPropertiesTo: aBIChartDistribution

	aBIChartDistribution 
		applicationName: self getApplicationName;
		fieldName: self getFieldName;
		formName: self getFormName ;
		startDate: (Date fromString: self getStartDate usingFormat: #(3 2 1 $- 1 1 true true false));
		endDate: (Date fromString: self getEndDate usingFormat: #(3 2 1 $- 1 1 true true false));
		version: self getVersion;
		queryBlock: self queryBlock.