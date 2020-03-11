export
printMatrixToWriteStream
	| stream |

	stream := WriteStream on: String new.

	self printMatrixToStream: stream.

	^stream