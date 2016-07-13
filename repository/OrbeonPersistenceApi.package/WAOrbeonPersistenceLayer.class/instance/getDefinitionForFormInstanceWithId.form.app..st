service-get
getDefinitionForFormInstanceWithId: id form: form app: app
	"This service is called when a click is performed on the Orbeon Form Summary page (or go directly to edit/view page of a form). The Summary then open the Form Instance in it's corresponding form definition.
	This service is used in combination of #getXmlOfFormInstanceWithId:form:app: to <get> the actual data of the form"
	| application orbeonDefinition instance |
	<get>
	<produces: 'application/xml'>
	<path: '/crud/{3}/{2}/form/form.xhtml?document={1}'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^self signalNoFormException: form id: id app: app].

	instance := self getOrbeonApplicationClass getAnyInstanceWith: id formName: form in: app 
							ifNone: [self getOrbeonApplicationClass getAnyDraftWith: id formName: form in: app 
												ifNone: [^self signalNoFormException: form id: id app: app]].

	orbeonDefinition := instance definition.

	self requestContext response headerAt: 'orbeon-form-definition-version' put: orbeonDefinition version printString.

	^((GRCodec forEncoding: 'utf-8') decode: orbeonDefinition xmlString) asString