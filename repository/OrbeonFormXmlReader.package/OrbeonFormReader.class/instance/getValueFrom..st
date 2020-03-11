output
getValueFrom: xmlNode
	"The receiver answer the content of the XMLElement <xmlNode>."

	^self getValueFrom: xmlNode ifNone: [nil]