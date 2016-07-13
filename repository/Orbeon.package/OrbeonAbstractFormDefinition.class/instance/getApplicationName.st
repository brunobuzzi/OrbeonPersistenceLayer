other
getApplicationName
	"Answer a string with the name of the receiver's Orbeon Application"

	application ifNil: [^''].

	^application applicationName