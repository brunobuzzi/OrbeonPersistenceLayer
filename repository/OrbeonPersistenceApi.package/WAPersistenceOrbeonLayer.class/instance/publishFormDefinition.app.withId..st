service-put
publishFormDefinition: formName app: app withId: documentId
	"This method is called by Orbeon when a Form Definition has been published with form name <formName> in application <app> with form id <documentId>"
	| apiOperation |
	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>

	apiOperation := OrbeonFormBuilderPublishApi newFor: self withXml: self requestContext request rawBody id: documentId.
	apiOperation createFormReader;
		appName: app;
		formName: formName;
		headerVersion: (self requestContext request headerAt: 'orbeon-form-definition-version').

	^apiOperation doIt.