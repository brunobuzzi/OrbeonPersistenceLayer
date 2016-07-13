all forms
getAllDefinitionsWithId: stringId ifNone: aBlock
	| definitions |

	definitions := OrderedCollection new.

	(self getDefinitionWithId: stringId ifNone: [nil]) ifNotNil: [:def | definitions add: def].

	(self getSavedDefinitionWithId: stringId ifNone: [nil]) ifNotNil: [:def | definitions add: def].

	definitions isEmpty ifTrue: [^aBlock value].

	^definitions