custom iteration
getXpathForNodeContent
	"The receiver answer a xpath string that points to the content node of the receiver "
	| iterationXpath |

	isRepeatable ifFalse: [^name].

	"this only apply to Repeatable sections"
	iterationXpath := iterationName ifNotNil: [iterationName] ifNil: [name, '-iteration']. "does NOT have a Custom Iteration Name"

	^name, '/', iterationXpath