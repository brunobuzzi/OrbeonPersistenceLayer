service-put
switchAvailabilityToFormDefinition: formName app: app
	"This method is called by Orbeon when a Form Definition has been unpublished with form name <formName> in application <app>"
	| apiOperation request |
	<put>
	<path: '/crud/{2}/{1}/form/form.xhtml'>
	
	request := self requestContext request.
	apiOperation := OrbeonSwitchAvailabilityApi newWithXml: (request bodyDecodeUsing: 'utf-8').
	apiOperation appName: app;
		formName: formName;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials');
		orbeonDataFormatVersion: (request headerAt: 'orbeon-data-format-version' ifAbsent: []).

	^apiOperation doIt