other
getXPathNodeName
	"Answer the XML node name for iterations when the receiver is repeatable"
	| customIterationName xPathName |

	"does have a Custom Iteration Name or not ?"
	customIterationName := iterationName 
									ifNotNil: [iterationName] "custome iteration name"
									ifNil: [name]. "does NOT have a Custom Iteration Name"

	xPathName := isRepeatable 
		ifTrue: [customIterationName, '/', customIterationName, '-iteration'] 
		ifFalse: [customIterationName].

	^xPathName