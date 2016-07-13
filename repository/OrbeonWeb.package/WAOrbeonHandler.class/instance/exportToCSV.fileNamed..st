object operations
exportToCSV: anOrderedCollection fileNamed: fileName
	| export stream |

	anOrderedCollection isEmpty ifTrue: [^self].

	export := MultilineRecursiveFormExport definition: anOrderedCollection last definition formsCollection: anOrderedCollection.
	export generatePrintArray.
	stream := export printMatrixToWriteStream.

	self sendToClientCSV: fileName, '.csv' stream: stream.