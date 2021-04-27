other
buildSavedFormStructureFrom: xmlString name: formName version: version in: appName title: title 
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"

	^self buildSavedFormStructureFrom: xmlString
			name: formName 
			version: version 
			id: UUID new asString 
			in: appName 
			title: title