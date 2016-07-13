published definition
getDefinitionVersion: versionNumber
	"Answer the last published version of the receiver <anOrbeonFormDefinition>"

	^self getDefinitionVersion: versionNumber ifNone: [nil]