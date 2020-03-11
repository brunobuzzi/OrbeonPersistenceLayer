output
getValueFrom: xmlNode ifNone: aBlock
	"The receiver answer the content of the XMLElement <xmlNode> if the content is empty then evaluate the zero argument block <aBlock>.
	This new implementation address the following issues: 
		#71 OrbeonPersistenceLayer.
		#230 BpmFlow"
	| content |

	content := xmlNode rawContentString.

	^content trimBlanks 
		ifEmpty: aBlock
		ifNotEmpty: [content]