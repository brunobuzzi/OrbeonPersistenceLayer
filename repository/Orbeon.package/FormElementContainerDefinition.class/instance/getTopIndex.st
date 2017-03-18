parent section
getTopIndex
	"Answer the index of the top element in the form tree structure"

	^self parentSection 
		ifNil: [tabIndex index]
		ifNotNil: [self parentSection getTopIndex]