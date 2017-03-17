service-get
getToolboxForApplication: appName
	"This method is called by Orbeon when a Form Definition (inside the Builder) is about to be Published.
	This method answer the latest version of the form definition <formName> in application <app>.
	Using the header <orbeon-form-definition-version> to set the version number.
	It also called when a new Form Instance page is about to be displayed (app/form/new)"
	| application latestDefinition headerVersion headerValue |
	<get>
	<produces: 'application/xml'>
	<path: '/custom/{1}/builder/toolbox'>

	application := self getOrbeonApplicationClass applicationNamed: appName ifNone: [^self noRouteFound: self requestContext].

	headerValue := self requestContext request headerAt: 'orbeon-form-definition-version'.
	headerVersion := headerValue ifNil: [application getLastFormDefinitionVersionOf: 'library'] ifNotNil: [Number fromString: headerValue].

	latestDefinition := application getSavedDefinition: 'library' version: headerVersion ifNone: [^self noRouteFound: self requestContext].
	latestDefinition isDeleted ifTrue: [^self noRouteFound: self requestContext].

	^((GRCodec forEncoding: 'utf-8') decode: latestDefinition xmlString) asString