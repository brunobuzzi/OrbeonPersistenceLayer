binary store
storeXmlOn: pathFile
	"The receiver destructively store on file <pathFile> the content of inst var <xmlString> "

	(FileStream write: pathFile)
		nextPutAll: xmlString;
		flush;
		close