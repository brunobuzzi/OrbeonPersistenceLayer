migration script
getApplicationDefinitionVersionOf: appName

	^(self execute: (mySqlReader sqlGetAllDefinitionVersionsOf: appName)) subStrings: String lf