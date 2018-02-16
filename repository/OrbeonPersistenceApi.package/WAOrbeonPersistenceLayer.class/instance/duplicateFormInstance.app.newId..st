service-put
duplicateFormInstance: formName app: app newId: id
	"This method is called by Orbeon when a user click 'Duplicate' in a Form Instance in the Form Runner"
	| apiOperation |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	apiOperation := OrbeonFormInstanceDuplicateApi newFor: self withXml: self requestContext request rawBody id: id.
	apiOperation appName: app;
		formName: formName;
		version: (Number fromString: (self requestContext request headerAt: 'orbeon-form-definition-version')).

	apiOperation execute.