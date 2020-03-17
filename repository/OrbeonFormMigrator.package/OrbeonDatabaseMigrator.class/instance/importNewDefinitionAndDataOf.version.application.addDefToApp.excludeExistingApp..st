db import
importNewDefinitionAndDataOf: form version: version application: appName addDefToApp: addToAppBool excludeExistingApp: excludeBoolean
	"The receiver import new definition and data of OrbeonApplication named <appName> for form definition named <form> with version <version>.
	If <aBoolean> is <true> then exclude existing OrbeonApplication from the process"
	| newDefinition app |

	(excludeBoolean and: [self getOrbeonApplicationClass hasApplicationNamed: appName]) ifTrue: [^#()].

	app := self getOrbeonApplicationClass 
							applicationNamed: appName 
							ifNone: [(self getOrbeonApplicationClass newNamed: appName) addToCache].
	"create the new OrbeonFormDefinition and add it to the new OrbeonApplication"
	newDefinition := self importFormDefinitionNamed: form version: version in: appName addToApp: addToAppBool.

	"importe the new OrbeonFormInstances"
	^self importDataOf: newDefinition version: version.