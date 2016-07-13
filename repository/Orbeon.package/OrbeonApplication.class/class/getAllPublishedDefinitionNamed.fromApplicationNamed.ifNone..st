all forms
getAllPublishedDefinitionNamed: defName fromApplicationNamed: appName ifNone: aBlock
	"Answer <anOrderedCollection> with all <OrbeonFormDefinition> named <defName> from the OrbeonApplication named <appName> if none evaluate <aBlock>"
	| app |

	app := self applicationNamed: appName ifNone: [^aBlock value].

	(app hasDefinitionNamed: defName) ifFalse: [^aBlock value].

	^app getAllDefinitionsNamed: defName ifNone: aBlock