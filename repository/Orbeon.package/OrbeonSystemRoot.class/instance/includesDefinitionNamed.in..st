forms - published
includesDefinitionNamed: aString in: appName
	| app |

	app := self applicationNamed: appName ifNone: [^false].

	^(app definitionNamed: aString) ifNil: [false] ifNotNil: [true]