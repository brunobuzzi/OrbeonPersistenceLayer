other
setFormName: aString
	"Set the variable <formName> of the receiver with <aString> and set the last published form with name <aString>"

	formName := aString.

	lastFormDefinition := application definitionNamed: aString ifNone: [^NoOrbeonFormException signal].