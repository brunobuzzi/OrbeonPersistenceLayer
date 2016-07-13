other
initialize

	super initialize.

	baseAttachmentPath := '/opt/orbeon-files/'.
	isEnabled := false.
	"some forms can be processed on demand others later. If <true> is deferred processing if <false> is on demand"
	deferredXmlProcessing := Dictionary new. 
	bpmForms := Dictionary new. "some forms are used in the BPM application others not (only as regular Orbeon Forms) "
	pathForAttachments := Dictionary new. "the path to store attachments of the forms"
	searchTypes := Dictionary new. "the search type of each form when a search has more than one value (#or #and)"
	formsAudit := Dictionary new. "whether or not an app.form has any audit configurations #(#drafs #instances #definitions)"