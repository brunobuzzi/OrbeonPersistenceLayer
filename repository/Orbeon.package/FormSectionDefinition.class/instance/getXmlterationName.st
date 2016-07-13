other
getXmlterationName
	"Answer the XML node name for iterations when the receiver is repeatable"
	| customIterationName xPathName |

	"does have a Custom Iteration Name or not ?"
	customIterationName := iterationName 
									ifNotNil: [iterationName] "custome iteration name"
									ifNil: [name]. "does NOT have a Custom Iteration Name"

	xPathName := self isMainSection 
						ifTrue:[isRepeatable 
								ifTrue: [customIterationName, '/',customIterationName, '-iteration'] "it must access the iteration node first then the xml node itself"
								ifFalse:[customIterationName]]"access the xml node directly"
						ifFalse: [self parentSectionIsRepeatable 
								ifTrue: [self parentName, '-iteration/', customIterationName] 
								ifFalse:[customIterationName]].

	^xPathName