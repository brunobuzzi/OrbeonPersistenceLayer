service-get
getDefinitionForFormInstanceWithId: id form: form app: app
	"This service is called when a click is performed on the Orbeon Form Summary page (or go directly to edit/view page of a form). The Summary then open the Form Instance in it's corresponding form definition.
	This service is used in combination of #getXmlOfFormInstanceWithId:form:app: to <get> the actual data of the form"
	| apiOperation |
	<get>
	<produces: 'application/xml'>
	<path: '/crud/{3}/{2}/form/form.xhtml?document={1}'>

	apiOperation := OrbeonDefinitionForFormInstanceApi newWithId: id.
	apiOperation appName: app;
		formName: form.

	^apiOperation doItAndSetVersion: [:versionString | self requestContext response headerAt: 'orbeon-form-definition-version' put: versionString]