service-get
getXmlOfFormInstanceWithId: id form: form app: app dataFormat: dataFormatVersion
	"This service is called when a click is performed on the Orbeon Form Summary page.
	The Summary then should open the Form Instance (view/edit mode) in the corresponding form definition (template).
	This sevice is used in combination with #getDefinitionForFormInstanceWithId:form:app: that <get> the form definition (template) to the form with id <id>"
	| apiOperation |
	<get>
	<produces: 'application/xml'>
	<path: '/crud/{3}/{2}/data/{1}/data.xml?data-format-version={4}'>

	apiOperation := OrbeonFormInstanceSourceApi newFor: self id: id.
	apiOperation appName: app;
		formName: form;
		group: (self requestContext request headerAt: 'orbeon-group');
		username: (self requestContext request headerAt: 'orbeon-username').

	^apiOperation doIt