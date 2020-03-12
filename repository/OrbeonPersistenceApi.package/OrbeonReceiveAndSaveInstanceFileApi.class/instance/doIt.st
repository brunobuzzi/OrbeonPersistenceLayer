other
doIt
	"This service is called from Orbeon Form Runner -new/edit- when a file is uploaded (and autosave is -true-) to a Form Instance.
	When the form is autosaved then all form's attachments are sent to this service "
	| gsFile |

	gsFile := GsFile open: ((self defaultOrbeonApiConfiguration getInstancesPathFor: self getFormName in: self getApplicationName), id, '-', fileId) mode: 'wb' onClient: false.

	gsFile
		nextPutAll: fileContents;
		flush;
		close.