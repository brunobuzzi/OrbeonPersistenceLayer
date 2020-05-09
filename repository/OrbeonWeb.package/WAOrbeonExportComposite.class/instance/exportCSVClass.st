other
exportCSVClass

	(exportMode = self multilineRecursiveExport) ifTrue: [^MultilineRecursiveFormExport].

	(exportMode = self singlelineRecursiveExport) ifTrue: [^SinglelineRecursiveFormExport].

	(exportMode = self singlelineSimpleExport) ifTrue: [^SinglelineSimpleFormExport].