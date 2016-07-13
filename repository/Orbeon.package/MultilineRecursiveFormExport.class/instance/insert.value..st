other
insert: fieldName value: fieldValue
	"The receiver insert in Array <valueArray> at <column> the value <fieldValue>. 
	<column> is the row index of the field <fieldName>
	<valueArray>  is <printArray> at <lineNumber>"
	| column valueArray |

	column := fieldPositions at: fieldName. "get the column of <fieldName>"
	valueArray := printArray at: lineNumber. "get the current row"
	valueArray at: column put: fieldValue. "insert the value"