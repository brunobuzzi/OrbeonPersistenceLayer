field definitions
hasRangeSearch: attributeName
	| type |

	type := fieldsType at: attributeName ifAbsent: [^false].

	(type = 'xf:string') ifTrue: [^false].
	(type = 'xf:email') ifTrue: [^false].
	(type = 'xf:boolean') ifTrue: [^false].

	^true