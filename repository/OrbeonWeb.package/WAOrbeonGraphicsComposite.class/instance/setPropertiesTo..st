chart settings
setPropertiesTo: aBIChartDistribution

	aBIChartDistribution 
		applicationName: self getApplicationName;
		fieldName: self getFieldName;
		formName: self getFormName ;
		startDate: (self getStartDate ifNotNil: [:yyyyDDmm | Date fromString: yyyyDDmm usingFormat: #(3 2 1 $- 1 1 true true false)] ifNil: []);
		endDate: (self getEndDate ifNotNil: [:yyyyDDmm | Date fromString: yyyyDDmm usingFormat: #(3 2 1 $- 1 1 true true false)] ifNil: []);
		version: self getVersion;
		queryBlock: self queryBlock.