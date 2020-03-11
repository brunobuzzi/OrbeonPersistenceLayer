db import
getAllOrbeonApplications
	"Answer a collection of string with all application name's of Orbeon Application"
	| dbApplicationsNames |

	dbApplicationsNames := (self getAllApplicationsName subStrings: String lf) "a collection of strings with App names"
												reject: [:each | self getOrbeonApplicationClass hasApplicationNamed: each]. "we filter existing app"

	^(dbApplicationsNames collect: [:eachName | self getOrbeonApplicationClass newNamed: eachName]) "we create a new app for each new row"
					asSortedCollection: [:a :b | a applicationName <= b applicationName]