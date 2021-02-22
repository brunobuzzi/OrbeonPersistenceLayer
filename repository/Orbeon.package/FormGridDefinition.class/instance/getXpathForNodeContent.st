other
getXpathForNodeContent
	"The receiver answer a xpath string that points to the content node of the receiver "
	| iterationXpath |

	self isRepeatable ifFalse: [^name].

	iterationXpath := iterationName ifNotNil: [iterationName] ifNil: [name, '-iteration']. "does NOT have a Custom Iteration Name"

	^name, '/', iterationXpath

	"^name"