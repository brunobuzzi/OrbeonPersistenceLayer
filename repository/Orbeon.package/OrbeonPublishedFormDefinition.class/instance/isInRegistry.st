other
isInRegistry
	"Answer whether or not the receiver is in the global cache (has not been removed)"
	| app registry |

	app := self getOrbeonApplicationClass applicationNamed: self applicationName ifNone: [^false].

	"in this case the <application> was removed and another application <app> with the same name was created after that"
	(app == application) ifFalse: [^false].

	registry := app registryForFormNamed: formName ifNone: [^false].

	registry allVersionsDo: [:publishedForm | (publishedForm == self) ifTrue: [^true]].

	^false