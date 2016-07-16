output
getValueFrom: node ifNone: aBlock

	node stringNodes isEmpty ifTrue: [^aBlock value].

	(node stringNodes reject: [:e | e string = String lf]) ifEmpty: [^aBlock value]. "*"

	(node stringNodes allSatisfy: [:e | e string trimBlanks isEmpty]) ifTrue: [^aBlock value]. "*"

	^node stringNodes last string


"*1 this change was introduced because XML parser change the behavior when dealing with <stringNodes>:
See:
https://github.com/brunobuzzi/BpmFlow/issues/230
"