other
printTabIndex

	^parentSection 
		ifNil: [tabIndex printString] 
		ifNotNil: [parentSection printTabIndex, '.', tabIndex printString]