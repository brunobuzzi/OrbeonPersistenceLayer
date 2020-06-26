service-put
saveDraftFormInstance: formName app: app withId: id valid: aBoolean
	"This method is called by Orbeon when a Form is autosaved in a Form Instance page"
	| apiOperation |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/draft/{3}/data.xml?valid={4}'>

	apiOperation := OrbeonFormSaveDraftApi newWithXml: (self requestContext request bodyDecodeUsing: 'utf-8') id: id.
	apiOperation appName: app;
		formName: formName;
		isValid: aBoolean;
		version: (Number fromString: (self requestContext request headerAt: 'orbeon-form-definition-version'));
		username:  (self requestContext request headerAt: 'orbeon-username'); "BUG - creator set only one time"
		modifiedUser: (self requestContext request headerAt: 'orbeon-username');
		groupname: (self requestContext request headerAt: 'orbeon-group').

	^apiOperation doIt