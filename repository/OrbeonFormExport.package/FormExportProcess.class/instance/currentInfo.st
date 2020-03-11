export
currentInfo
	| info |

	info := (printArray at: lineNumber ifAbsent: [^'']) at: 2 "info" ifAbsent: [''].

	info ifNil: [^''].

	^info