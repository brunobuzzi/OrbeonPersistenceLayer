other
doIt
	"This service is called when a click is performed on the Orbeon Form Summary page.
	The Summary then should open the Form Instance (view/edit mode ) in the corresponding form definition (template).
	This sevice is used in combination with #getDefinitionForFormInstanceWithId:form:app: that <get> the form definition (template) to the form with id <id>"
	| instance permissions |

	instance := self getInstance.

	permissions := instance getPermissionsForUser: username inGroup: group with: instance definition.
	
	restHandler requestContext response headerAt: 'orbeon-operations' put: permissions.

	^((GRCodec forEncoding: 'utf-8') decode: instance xmlString) asString