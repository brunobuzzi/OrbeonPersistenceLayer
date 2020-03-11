export
printToFile: pathFile
	| stream |

	stream := FileStream write: pathFile.

	self printMatrixToStream: stream.

	stream flush; close.