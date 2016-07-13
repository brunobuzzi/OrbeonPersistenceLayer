other
generatePrintArray

	printArray at: 1 put: (Array with: 'ID').
	printArray at: 2 put: (Array with: 'ID').

	definition getFieldsNames keysAndValuesDo: [:index :fieldName |  
		(printArray at: 1) at: index + 1 put: fieldName. 
		(printArray at: 2) at: index + 1 put: (self getLabelOf: fieldName)].

	lineNumber := 3. "the actual data is put from row 3 ..."

	formsCollection do: [:each |
		printArray at: lineNumber put: (Array with: each id).
		self printInstance: each.
		lineNumber := lineNumber + 1].