applications
formDefinitionNamed: aString in: appName
	"The receiver answer an <OrbeonFormDefinition> named <aString> in OrbeonApplication named <appName>.
	If the form definition does not exist then answer <nil>"
	| app |

	app := self applicationNamed: appName ifNone: [^nil].

	^app definitionNamed: aString