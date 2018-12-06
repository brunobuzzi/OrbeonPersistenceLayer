other
doIt
	"This service is called when rendering the Draft of the form in Form Instance page"
	| gsFile |

	gsFile := GsFile openOnServer: ((self apiConfiguration getDraftsPathFor: self getFormName in: self getApplicationName), id, '-', fileId) mode: 'rb'.
	fileContents := gsFile contentsAsUtf8.

	gsFile close.

	^fileContents