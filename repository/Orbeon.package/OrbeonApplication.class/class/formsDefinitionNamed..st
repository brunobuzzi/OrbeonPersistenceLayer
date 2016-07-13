published forms
formsDefinitionNamed: aString
	| forms |

	forms := OrderedCollection new.
	self getOrbeonCache do:[:each | | form |
		form := each definitionNamed: aString.
		form ifNotNil: [forms add: form].].
	^forms