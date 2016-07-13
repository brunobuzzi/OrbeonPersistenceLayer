other
exportToCSV

	exportComponent := exportComponent 
		ifNil: [(OrbeonExportComposite parent: self) exportCollection: innerBatchList items; yourself]