other
fileOutForm: xmlString to: aPathFile
	| gsFile |

	gsFile := GsFile open: aPathFile mode: 'wb' onClient: false.

	gsFile
		nextPutAll: xmlString;
		flush;
		close.