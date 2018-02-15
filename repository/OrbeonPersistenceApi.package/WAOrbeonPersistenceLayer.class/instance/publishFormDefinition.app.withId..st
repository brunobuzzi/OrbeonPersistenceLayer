service-put
publishFormDefinition: formName app: app withId: documentId
	"This method is called by Orbeon when a Form Definition has been published with form name <formName> in application <app> with form id <documentId>"
	| xmlString xmlDocument headerVersion apiOperation |
	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>

	apiOperation := OrbeonFormBuilderPublishApi newWithXml: self requestContext request rawBody id: documentId.
	apiOperation appName: app;
		formName: formName;
		headerVersion: (self requestContext request headerAt: 'orbeon-form-definition-version').

	apiOperation execute.

	xmlString := self requestContext request rawBody.
	xmlDocument := XMLDOMParser parse: xmlString.
	headerVersion := self requestContext request headerAt: 'orbeon-form-definition-version'.
	"Orbeon put -next- when a new version is going to be generated, if NOT --> then user has updated the existing version <headerVersion> [new in Orbeon 2016.2.2]"

	^self publishFormDefinitionNamed: formName 
				in: app 
				id: documentId 
				headerVersion: headerVersion 
				title: (self getFormTitleFrom: xmlDocument ifNone: ['']) 
				description: (self getFormDescriptionFrom: xmlDocument ifNone: ['']) 
				xml: self requestContext request rawBody