other
printAllVersionNumbers
	| printStream |

	printStream := PrintStream on: String new.

	printStream nextPutAll: 'Current: ', String lf.

	self getCurrentVersionNumbers do: [:each | printStream nextPutAll: each printString , ' , '].

	printStream nextPutAll: String lf, 'Old: ', String lf.

	self getOldVersionNumbers do: [:each | printStream nextPutAll: each printString, ' , '].

	^printStream contents