other
exportToCSV: anOrderedCollection fileNamed: fileName format: aFormExportProcessClass
	| export stream |

	anOrderedCollection isEmpty ifTrue: [^self].

	export := aFormExportProcessClass definition: anOrderedCollection last definition formsCollection: anOrderedCollection.
	export generatePrintArray.
	stream := export printMatrixToWriteStream.

	self sendToClientCSV: fileName, '.csv' stream: stream.