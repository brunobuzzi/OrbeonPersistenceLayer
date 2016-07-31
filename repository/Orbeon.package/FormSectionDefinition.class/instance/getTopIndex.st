other
getTopIndex
	"Answer the index of the top element in the form tree structure"

	^parentSection 
		ifNil: [tabIndex index]
		ifNotNil: [parentSection getTopIndex]