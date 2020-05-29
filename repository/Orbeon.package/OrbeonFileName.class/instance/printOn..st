other
printOn: aStream
	| id |

	super printOn: aStream.

	id := (osFileName subStrings: '-') last.
	(id size > 5) ifTrue: [aStream nextPutAll: '[', (id first: 5), ']']