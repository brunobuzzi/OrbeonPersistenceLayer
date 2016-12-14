service-get
getFormVersion: formName app: app 
	"This method is called by Orbeon when a Form Definition (inside the Builder) is about to be Published.
	This method answer the latest version of the form definition <formName> in application <app>.
	Using the header <orbeon-form-definition-version> to set the version number.
	It also called when a new Form Instance page is about to be displayed (app/form/new)"
	| application latestVersionNumber latestDefinition headerVersion |
	<get>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^self defaultDefinitionAnswer: formName app: app].

	headerVersion := Number fromString: (self requestContext request headerAt: 'orbeon-form-definition-version').
"	latestVersionNumber := application getLastFormDefinitionVersionOf: formName.
	self requestContext response headerAt: 'orbeon-form-definition-version' put: latestVersionNumber printString."

	latestDefinition := application getSavedDefinition: formName version: headerVersion ifNone: [^self noRouteFound: self requestContext].

	^((GRCodec forEncoding: 'utf-8') decode: latestDefinition xmlString) asString