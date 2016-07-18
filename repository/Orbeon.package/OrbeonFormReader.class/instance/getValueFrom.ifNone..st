output
getValueFrom: xmlNode ifNone: aBlock
	"The receiver answer the content of the XMLElement <xmlNode>.
	This new implementation address the following issues: 
		#71 OrbeonPersistenceLayer.
		#230 BpmFlow"
	| content |

	content := xmlNode rawContentString.

	^content trimBlanks 
		ifEmpty: aBlock
		ifNotEmpty: [content]