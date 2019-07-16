other
generatePrintArray
    "The receiver creates anArray with values to export to a CSV file"
    | fieldSpace previousColumunShift firsElement |

    fieldSpace := self getFieldsNameSpace2. "aDictionary fieldName-->columunShift"
    lineNumber := 3.
    previousColumunShift := 3 "2".
    printArray at: 1 put: (Array new: 500).
    printArray at: 2 put: (Array new: 500).
    (printArray at: 1) at: 1 put: 'ID'.
    (printArray at: 1) at: 2 put: 'Created Time'.
    (printArray at: 2) at: 1 put: 'ID'.
    (printArray at: 2) at: 2 put: 'Created Time'.
    printArray at: 3 put: Array new.
    firsElement := formsCollection isEmpty ifTrue: [nil] ifFalse: [formsCollection first].

    (fieldSpace orderedKeys reject: [:each | each isNil]) do: [:fieldName | | label columunShift |
        columunShift := fieldSpace at: fieldName.
        (printArray at: 1) at: previousColumunShift put: fieldName.
        label := (self getLabelOf: fieldName) "decodeFromUTF8ToUnicode asString".
        (printArray at: 2) at: previousColumunShift put: label.
        previousColumunShift := previousColumunShift + columunShift.
    ].

    formsCollection do: [:eachForm | | newArray columnNumber |
        newArray := Array new: 501.
        newArray at: 1 put: eachForm id.
        newArray at: 2 put: eachForm createdTime date printString.
        columnNumber := 2.
        (fieldSpace orderedKeys reject: [:each | each isNil]) do: [:fieldName | | valueHolder |
            valueHolder := eachForm holderValueAt: fieldName.
            newArray addAll: (valueHolder currentValues collect: [:appFieldValue | (appFieldValue valueAsString copyWithoutAll: String lf)"decodeFromUTF8ToUnicode asString"])
                            afterIndex: columnNumber.
            columnNumber := columnNumber + (fieldSpace at: fieldName).
        ].
        printArray at: lineNumber put: newArray.   
        lineNumber :=     lineNumber + 1.   
    ].