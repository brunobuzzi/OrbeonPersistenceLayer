service-put
saveInFormBuilderDefinitionWithId: id valid: aBoolean
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| xmlDocument appName formName xmlString |
	<put>
	<path: '/crud/orbeon/builder/data/{1}/data.xml/?valid={2}'>

	xmlString := self requestContext request rawBody.
	xmlDocument := XMLDOMParser parse: xmlString.
	appName := self getApplicationNameFrom: xmlDocument ifNone: [nil].
	formName := self getFormNameFrom: xmlDocument ifNone: [nil].

	^self saveFormDefinitionInFormBuilder: formName 
				in: appName 
				id: id 
				valid: aBoolean 
				title: (self getFormTitleFrom: xmlDocument ifNone: [''])  
				description: (self getFormDescriptionFrom: xmlDocument ifNone: ['']) 
				xml: xmlString