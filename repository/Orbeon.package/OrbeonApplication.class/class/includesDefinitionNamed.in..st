published forms
includesDefinitionNamed: aString in: appName
	| forms app |

	app := self applicationNamed: appName ifNone: [^false].

	^(app definitionNamed: aString) ifNil: [false] ifNotNil: [true]