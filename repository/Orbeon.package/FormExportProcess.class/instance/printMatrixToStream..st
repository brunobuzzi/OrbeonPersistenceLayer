export
printMatrixToStream: aStream
	"The receiver iterate over structure <printArray> and put it's content on <aStream>"

	printArray do: [:columnArray | "row iteration"
		columnArray do: [:columnValue |  "column iteration"
			columnValue 
			ifNotNil: [aStream nextPutAll: columnValue; nextPutAll: String tab] 
			ifNil: [aStream nextPutAll: String tab].
		].
		aStream nextPutAll: String lf.
	].

	^aStream