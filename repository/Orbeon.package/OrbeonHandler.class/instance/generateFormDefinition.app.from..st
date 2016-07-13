mapping
generateFormDefinition: formName app: appName from: dbArray
	"Create a new definition of the Form based on <dbArray>"
	| version formDefinition |

	version := Integer fromString: (dbArray at: 7).

	formDefinition := OrbeonPublishedFormDefinition app: appName form: formName.

	^formDefinition updateFrom: dbArray;
		version: version;
		xmlString: ((dbArray at: 8) copyReplaceAll: '\n' with: Character lf); "-\n- is inserted by Bash "
		yourself