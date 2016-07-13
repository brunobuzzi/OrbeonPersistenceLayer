published definition
getLastVersion
	"Answer the last published version of the receiver <anOrbeonFormDefinition>"

	currentVersions isEmpty ifTrue: [^nil].

	^currentVersions last