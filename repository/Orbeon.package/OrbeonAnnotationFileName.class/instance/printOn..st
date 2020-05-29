other
printOn: aStream
	| id |

	super printOn: aStream.

	id := (imageFileName osFileName subStrings: '-') last.
	(id size > 5) ifTrue: [aStream nextPutAll: '(im[', (id first: 5), ']'].


	id := (annotationFileName osFileName subStrings: '-') last.
	(id size > 5) ifTrue: [aStream nextPutAll: 'an[', (id first: 5), '])'].