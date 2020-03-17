sql queries
getAllApplicationDefinitionVersionFromDB

	^(self execute: sqlReader sqlGetAllApplicationWithDefinitionVersions) subStrings: String lf