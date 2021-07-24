other
isInRegistry
	"Answer whether or not the receiver is in the global cache (has not been removed)"
	| app |

	app := self systemRoot applicationNamed: self applicationName ifNone: [^false].

	"in this case the <application> was removed and another application <app> with the same name was created after that"
	(app == application) ifFalse: [^false].

	(app hasRegistryForFormNamed: formName) ifFalse: [^false].

	app allVersionsOf: formName do: [:publishedForm | (publishedForm == self) ifTrue: [^true]].

	^false