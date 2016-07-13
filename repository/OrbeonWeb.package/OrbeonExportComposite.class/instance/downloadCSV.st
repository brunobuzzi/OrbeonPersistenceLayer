other
downloadCSV

	exportCollection isEmpty ifTrue: [^self].

	self exportToCSV: exportCollection fileNamed: 'export.csv' format: self exportCSVClass