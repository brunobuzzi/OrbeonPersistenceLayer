search type
typeSearchIsAnd: formName in: appName
	"Answer whether or not the type search is AND for the form definition <formName> in application named <appName>.
	false - is OR
	true - is AND
	by default is OR"

	^((searchTypes at: appName ifAbsent: [^false])
		at: formName ifAbsent: [^false]) == true