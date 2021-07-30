generate orbeon objects
generateFormDefinition: formName app: appName from: dbArray
	"Create a new definition of the Form based on <dbArray>"
	| formDefinition xmlString builder |

	formDefinition := self defaultSavedFormDefinitionClass newNamed: formName in: (systemRoot getExistingApplicationOrCreateNewNamed: appName).

	formDefinition updateFrom: dbArray.

	xmlString := ((dbArray at: 8) copyReplaceAll: '\n' with: Character lf). "-\n- is inserted by Bash "
	formDefinition setXmlString: xmlString.

	builder := systemRoot newFormBuilderFor: xmlString.

	formDefinition setTitleAndDescriptionWith: builder.

	^formDefinition