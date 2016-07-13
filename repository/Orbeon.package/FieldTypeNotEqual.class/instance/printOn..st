other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: ' (' ,field, ').[', typeOne, ']-[', typeTwo, ']'