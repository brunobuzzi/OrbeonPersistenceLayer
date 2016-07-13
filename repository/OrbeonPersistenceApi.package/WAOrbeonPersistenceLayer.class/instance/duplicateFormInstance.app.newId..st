service-put
duplicateFormInstance: formName app: app newId: id
	"This method is called by Orbeon when a user click 'Send' in a Form Instance page"
	| orbeonInstance application currentInstance |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^self signalNoApplicationException: app].
	currentInstance := application getAnyInstanceWithId: id of: formName.

	orbeonInstance := OrbeonFormInstance new.

	orbeonInstance xmlString: self requestContext request rawBody;
	"	app: app;
		form: formName; "
		id: id;
		definition: currentInstance definition;
		version: (self requestContext request headerAt: 'orbeon-form-definition-version');
		updateLastModifiedTime.