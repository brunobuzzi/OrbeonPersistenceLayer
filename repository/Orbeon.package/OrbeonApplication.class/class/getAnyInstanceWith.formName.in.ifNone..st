instance forms
getAnyInstanceWith: id formName: formNamed in: appName ifNone: aBlock
	| application definitions |

	application := self applicationNamed: appName ifNone: [^aBlock value].
	definitions := application getAllDefinitionsNamed: formNamed ifNone: [^aBlock value].

	definitions do: [:each | (each getInstanceWithId: id) ifNotNil: [:form | ^form]].

	^aBlock value