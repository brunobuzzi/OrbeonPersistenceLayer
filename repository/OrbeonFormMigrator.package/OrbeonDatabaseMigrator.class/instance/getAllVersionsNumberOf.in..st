other
getAllVersionsNumberOf: formName in: app
	"Answer a collection with all version number of form definition named <formName> in application named <app>"

	^((self execute: (sqlReader selectAllVersionOf: formName in: app)) subStrings: String lf) collect: [:each | Number fromString: each]