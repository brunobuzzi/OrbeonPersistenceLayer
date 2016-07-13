published definition
getLastVersionNumber
	"Answer the version of the last published definition of the receiver"

	^self getLastVersion 
		ifNotNil: [:lastDef | lastDef version]
		ifNil: [0]