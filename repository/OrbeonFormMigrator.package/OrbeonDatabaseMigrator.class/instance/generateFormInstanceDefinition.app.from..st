generate orbeon objects
generateFormInstanceDefinition: formName app: appName from: aDBString
	"Create a new instance of the Form based on <dbArray>"
	| instance resultArray xmlString builder |

	resultArray := aDBString subStrings: String tab.
	xmlString := ((resultArray at: 7) copyReplaceAll: '\n' with: Character lf). "-\n- is inserted by Bash "
	builder := systemRoot newFormBuilderFor: xmlString.

	instance := self defaultSavedFormDefinitionClass newNamed: formName in: (systemRoot getExistingApplicationOrCreateNewNamed: appName).
	^instance 
		updateFrom: resultArray;
		xmlString: xmlString;
		setTitleAndDescriptionWith: builder;
		yourself.