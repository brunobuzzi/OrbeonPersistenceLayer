generate orbeon objects
generateFormDefinition: formName app: appName from: dbArray
	"Create a new definition of the Form based on <dbArray>"
	| formDefinition |

	formDefinition := OrbeonSavedFormDefinition newNamed: formName inAppNamed: appName.

	^formDefinition updateFrom: dbArray;
		yourself