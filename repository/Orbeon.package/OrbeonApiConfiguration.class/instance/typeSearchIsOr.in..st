search type
typeSearchIsOr: formName in: appName
	"Answer whether or not the type search is OR for the form definition <formName> in application named <appName>.
	false - is OR
	true - is AND
	by default is OR"

	^((searchTypes at: appName ifAbsent: [^true])
		at: formName ifAbsent: [^true]) == false