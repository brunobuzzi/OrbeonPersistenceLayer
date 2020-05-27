generate orbeon objects
generateFormDefinition: formName app: appName from: dbArray
	"Create a new definition of the Form based on <dbArray>"
	| version formDefinition |

	version := Integer fromString: (dbArray at: 7).

	formDefinition := OrbeonSavedFormDefinition newNamed: formName inAppNamed: appName.

	^formDefinition updateFrom: dbArray;
		version: version;
		setXmlString: ((dbArray at: 8) copyReplaceAll: '\n' with: Character lf); "-\n- is inserted by Bash "
		yourself