db connection
setDatabaseIP: ipStringAddress user: databaseUser password: databasePassword

	^self getOrbeonDatabaseConfiguration
			databaseIP: ipStringAddress;
			databaseUser: databaseUser;
			databasePassword: databasePassword