service-put
switchAvailabilityToFormDefinition: formName app: app
	"This method is called by Orbeon when a Form Definition has been unpublished with form name <formName> in application <app>"
	| apiOperation |
	<put>
	<path: '/crud/{2}/{1}/form/form.xhtml'>

	apiOperation := OrbeonSwitchAvailabilityApi new.
	apiOperation appName: app;
		formName: formName;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials').

	^apiOperation doIt