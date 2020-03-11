other
generatePrintArray_new
	"The receiver creates anArray with values to export to a CSV file"
	| fieldSpace previousColumunShift firsElement |

	fieldSpace := self getFieldsNameSpace. "aDictionary fieldName-->columunShift"
	lineNumber := 3.
	previousColumunShift := 1.
	printArray at: 1 put: (Array new: 500).
	printArray at: 2 put: (Array new: 500).
	(printArray at: 2) at: 1 put: 'ID'.
	printArray at: 3 put: Array new.
	firsElement := formsCollection isEmpty ifTrue: [nil] ifFalse: [formsCollection first].
	fieldSpace keysAndValuesDo: [:fieldName :columunShift | | label |
		(printArray at: 1) at: (previousColumunShift + 1) put: fieldName.
		label := self getLabelOf: fieldName.
		(printArray at: 2) at: (previousColumunShift + 1) put: label.
		previousColumunShift := previousColumunShift + columunShift].

	formsCollection do: [:eachForm | | newArray columnNumber |
		newArray := Array new: 501.
		columnNumber := 1.
		newArray at: 1 put: eachForm id.
		eachForm getAllFields keysAndValuesDo: [:fieldName :valueCollection | 
			newArray addAll: (valueCollection collect: [:e | e copyWithoutAll: String lf]) afterIndex: columnNumber.
			columnNumber := columnNumber + (fieldSpace at: fieldName).
		].
		printArray at: lineNumber put: newArray.	
		lineNumber := 	lineNumber + 1.	
	].