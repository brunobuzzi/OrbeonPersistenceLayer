other
getIterationName
	"Answer the XML node name for iterations when the receiver is repeatable"

	"does have a Custom Iteration Name or not ?"
	^iterationName 
		ifNotNil: [iterationName] "custome iteration name"
		ifNil: [name, '-iteration']. "does NOT have a Custom Iteration Name"