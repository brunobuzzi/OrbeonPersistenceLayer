sql queries
getApplicationDefinitionVersionOf: appName

	^(self execute: (sqlReader sqlGetAllDefinitionVersionsOf: appName)) subStrings: String lf