export
printMatrix
	"Print the export structure to a PrintStream"
	| stream |

	stream := PrintStream on: String new.

	self printMatrixToStream: stream.

	^stream