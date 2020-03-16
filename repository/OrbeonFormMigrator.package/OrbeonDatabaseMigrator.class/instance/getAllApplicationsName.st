db import
getAllApplicationsName
	"Answer a collection of string with all application name's of Orbeon Application"

	^self execute: sqlReader sqlGetAllApplications