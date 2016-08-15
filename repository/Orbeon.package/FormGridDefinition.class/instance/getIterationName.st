other
getIterationName
	"Answer the XML node name for iterations when the receiver is repeatable"
	| customIterationName |

	"does have a Custom Iteration Name or not ?"
	customIterationName := iterationName 
									ifNotNil: [iterationName] "custome iteration name"
									ifNil: [name]. "does NOT have a Custom Iteration Name"


	^customIterationName