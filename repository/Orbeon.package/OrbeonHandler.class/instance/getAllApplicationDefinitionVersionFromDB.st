migration script
getAllApplicationDefinitionVersionFromDB

	^(self execute: mySqlReader sqlGetAllApplicationWithDefinitionVersions) subStrings: String lf