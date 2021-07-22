applications
getLastPublishedDefinitionNamed: defName fromApplicationNamed: appName withVersion: version ifNone: aBlock
	"Answer the OrbeonFormDefinition named <defName> and version equal to <version> from the OrbeonApplication named <appName> if none evaluate <aBlock>"
	| app |

	app := self applicationNamed: appName ifNone: [^aBlock value].

	(app hasDefinitionNamed: defName) ifFalse: [^aBlock value].

	^(app getAllDefinitionsNamed: defName) detect: [:each | each version = version] ifNone: [aBlock value]