other
generatePrintArray
	"The receiver creates anArray with values to export to a CSV file"

	fieldPositions at: 'id' put: 1. "the first column is the <id> of the form"
	fieldPositions at: 'info' put: 2. "the secon column is for extra information"

	definition getFieldsNames keysAndValuesDo: [:index :fieldName | "from 2nd column we put the name of the fields"
		fieldPositions at: fieldName put: (index + 2). 
		printArray at: index put: Array new. "<printArray> is an Array of Arrays."].

	"at: 1 put the names of the fields"
	printArray at: 1 put: (fieldPositions asSortedArray collect: [:index | fieldPositions keyAtValue: index ifAbsent: [nil]]).
	"at: 2 put the labels of the fields"

	printArray at: 2 put: Array new. "in the row below of field names we set the fields label"
	(printArray at: 1) keysAndValuesDo: [:index :fieldName | | label |
		label := (definition labelAt: fieldName) copyWithoutAll: String lf.
		(printArray at: 2) at: index put: label].

	lineNumber := 3. "the actual data is put from row 3 ..."

	formsCollection do: [:each | self printInstance: each.]