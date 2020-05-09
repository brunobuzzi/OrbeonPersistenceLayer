other
getAllExportOptions

	^Array with: self singlelineSimpleExport
				with: self singlelineRecursiveExport
				with: self multilineRecursiveExport