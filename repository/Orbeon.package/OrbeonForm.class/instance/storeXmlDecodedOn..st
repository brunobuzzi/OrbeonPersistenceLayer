binary store
storeXmlDecodedOn: pathFile
	"The receiver destructively store on file <pathFile> the content of inst var <xmlString> "

	(FileStream write: pathFile)
		nextPutAll: ((GRCodec forEncoding: 'utf-8') decode: xmlString);
		flush;
		close