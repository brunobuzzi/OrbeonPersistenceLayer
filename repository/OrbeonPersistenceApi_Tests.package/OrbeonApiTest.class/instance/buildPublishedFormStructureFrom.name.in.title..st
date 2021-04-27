other
buildPublishedFormStructureFrom: xmlString name: formName in: appName title: title 
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	
	^self buildPublishedFormStructureFrom: xmlString name: formName version: 1 in: appName title: title