other
exportToCSV

	exportComponent := exportComponent 
		ifNil: [(OrbeonExportComposite parent: self) exportCollection: collection; yourself]
		ifNotNil: [exportComponent answer. nil]

	"self topPanel exportToCSV: batchedList items fileNamed: description trimBlanks"