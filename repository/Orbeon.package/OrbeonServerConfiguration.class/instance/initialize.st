other
initialize

	super initialize.

"	self setXpathVersionUpTo_2017_1. "

	self setXpathVersionTo_2017_2.

	baseAttachmentPath := '/opt/orbeon-files/'.
	"some forms can be processed on demand others later. If <true> is deferred processing if <false> is on demand"
	deferredXmlProcessing := Dictionary new. 
	pathForAttachments := Dictionary new. "the path to store attachments of the forms"
	searchTypes := Dictionary new. "the search type of each form when a search has more than one value (#or #and)"
	formsAudit := Dictionary new. "whether or not an app.form has any audit configurations #(#drafs #instances #definitions)"

	orbeonFormReaderClass := OrbeonXPathFormReader2019_1.

	databaseMigrator := OrbeonMySQLMigrator new.