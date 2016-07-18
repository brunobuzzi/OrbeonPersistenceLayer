output
getValueFrom: node ifNone: aBlock
	| stringNodes |

	stringNodes := node stringNodes. "see issue #71 OrbeonPersistenceLayer"

	stringNodes isEmpty ifTrue: [^aBlock value].

	(stringNodes reject: [:e | e string = String lf]) ifEmpty: [^aBlock value]. "*"

	(stringNodes allSatisfy: [:e | e string trimBlanks isEmpty]) ifTrue: [^aBlock value]. "*"

	^stringNodes last string


"*1 this change was introduced because XML parser change the behavior when dealing with <stringNodes>:
See:
https://github.com/brunobuzzi/BpmFlow/issues/230
"