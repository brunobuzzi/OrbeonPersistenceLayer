other
exportToCSV

	exportComponent := exportComponent 
		ifNil: [(WAOrbeonExportComposite parent: self) exportCollection: innerBatchList items; yourself]