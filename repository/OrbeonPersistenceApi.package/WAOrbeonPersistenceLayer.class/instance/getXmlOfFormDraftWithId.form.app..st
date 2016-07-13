service-get
getXmlOfFormDraftWithId: id form: form app: app
	"This service is called when a click is performed on the Orbeon Form Summary page.
	The Summary then should open the Form Instance (view/edit mode ) in the corresponding form definition (template).
	This sevice is used in combination with #getDefinitionForFormInstanceWithId:form:app: that <get> the form definition (template) to the form with id <id>"
	| instance permissions username group |
	<get>
	<produces: 'application/xml'>
	<path: '/crud/{3}/{2}/draft/{1}/data.xml'>

	instance := self getOrbeonApplicationClass getAnyDraftWith: id formName: form in: app ifNone: [^self signalNoFormException: form id: id app: app].

	group := self requestContext request headerAt: 'orbeon-group'.
	username := self requestContext request headerAt: 'orbeon-username'.
	permissions := instance getPermissionsForUser: username inGroup: group with: instance definition.
	
	self requestContext response headerAt: 'orbeon-operations' put: permissions.

	^((GRCodec forEncoding: 'utf-8') decode: instance xmlString) asString