os files
deleteAllOSFiles
	"WARNING: this method is only intented for development"

	System performOnServer: 'cd ', self getOrbeonWebServerConfiguration baseAttachmentPath, 'temp; rm *; cd ../instances; rm *; cd ../drafts; rm *; cd ../definitions/saved; rm *; cd ../published; rm *'