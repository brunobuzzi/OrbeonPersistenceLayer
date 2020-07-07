registry
registry
	| app |

	app := self getApplication.
	app ifNil: [^nil].

	^app registryForFormNamed: self formName ifNone: [nil]