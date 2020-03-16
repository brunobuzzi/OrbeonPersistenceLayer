mapping
generateFormInstanceDefinition: formName app: appName from: aDBString
	"Create a new instance of the Form based on <dbArray>"
	| instance resultArray |

	resultArray := aDBString subStrings: String tab.
	instance := OrbeonSavedFormDefinition new.
	^instance setApplication: appName;
		formName: formName;
		updateFrom: resultArray;
		xmlString: ((resultArray at: 7) copyReplaceAll: '\n' with: Character lf); "-\n- is inserted by Bash "
		"setApplicationAndFormName;"
		setMetadata;
		yourself.