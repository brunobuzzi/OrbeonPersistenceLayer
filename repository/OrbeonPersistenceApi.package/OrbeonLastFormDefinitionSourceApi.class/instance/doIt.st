other
doIt
	"This method is called by Orbeon when a Form Definition (inside the Builder) is about to be Published.
	This method answer the latest version of the form definition <formName> in application <app>.
	Using the header <orbeon-form-definition-version> to set the version number.
	It also called when a new Form Instance page is about to be displayed (app/form/new)"
	| application latestDefinition headerVersion |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^restHandler noRouteFound: restHandler requestContext].

	headerVersion := headerVersionValue ifNil: [application getLastFormDefinitionVersionOf: self getFormName] ifNotNil: [Number fromString: headerVersionValue].

	latestDefinition := application getSavedDefinition: formName version: headerVersion ifNone: [^restHandler noRouteFound: restHandler requestContext].
	latestDefinition isDeleted ifTrue: [^restHandler noRouteFound: restHandler requestContext].
	"latestDefinition definition isAvailable ifFalse: [^restHandler noRouteFound: restHandler requestContext]."

	^((GRCodec forEncoding: 'utf-8') decode: latestDefinition xmlString) asString