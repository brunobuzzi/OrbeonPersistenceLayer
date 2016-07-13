published definition
getDefinitionVersion: versionNumber ifNone: aBlock
	"Answer the last published version of the receiver <anOrbeonFormDefinition>"

	currentVersions isEmpty ifTrue: [^aBlock value].

	^currentVersions detect: [:each | each version = versionNumber] ifNone: aBlock