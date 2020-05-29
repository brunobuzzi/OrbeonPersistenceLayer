generate orbeon objects
generateFormDefinition: formName app: appName from: dbArray
	"Create a new definition of the Form based on <dbArray>"
	| formDefinition |

	formDefinition := OrbeonSavedFormDefinition newNamed: formName inAppNamed: appName.

	formDefinition updateFrom: dbArray.
	
	formDefinition setXmlString: ((dbArray at: 8) copyReplaceAll: '\n' with: Character lf). "-\n- is inserted by Bash "

	^formDefinition