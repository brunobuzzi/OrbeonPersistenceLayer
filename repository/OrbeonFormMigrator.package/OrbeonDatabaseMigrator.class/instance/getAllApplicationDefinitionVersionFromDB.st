migration scripts
getAllApplicationDefinitionVersionFromDB

	^(self execute: sqlReader sqlGetAllApplicationWithDefinitionVersions) subStrings: String lf