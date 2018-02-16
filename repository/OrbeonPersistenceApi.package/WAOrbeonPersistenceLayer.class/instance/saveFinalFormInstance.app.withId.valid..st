service-put
saveFinalFormInstance: formName app: app withId: id valid: aBoolean
	"This method is called by Orbeon when a user click 'Send' in a Form Instance page"
	| apiOperation |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml?valid={4}'>

	apiOperation := OrbeonFormSaveFinalApi newFor: self withXml: self requestContext request rawBody id: id.
	apiOperation appName: app;
		formName: formName;
		isValid: aBoolean;
		version: (Number fromString: (self requestContext request headerAt: 'orbeon-form-definition-version'));
		username:  (self requestContext request headerAt: 'orbeon-username'); "BUG - creator set only one time"
		modifiedUser: (self requestContext request headerAt: 'orbeon-username');
		groupname: (self requestContext request headerAt: 'orbeon-group').

	apiOperation execute