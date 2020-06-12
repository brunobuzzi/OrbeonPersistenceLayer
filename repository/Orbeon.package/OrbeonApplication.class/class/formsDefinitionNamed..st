published forms
formsDefinitionNamed: aString
	| forms |

	forms := OrderedCollection new.
	self doInOrbeonCache: [:each | | form |
		form := each definitionNamed: aString.
		form ifNotNil: [forms add: form].].
	^forms