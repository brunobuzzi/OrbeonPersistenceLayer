search type
setOrTypeSearchFor: formName in: appName
	"The receiver set the type search as OR for the form definition named <formName> in the application named <appName>.
	false - is OR
	true - is AND
	by default is OR"

	^(searchTypes at: appName ifAbsentPut: [Dictionary new])
		at: formName put: false