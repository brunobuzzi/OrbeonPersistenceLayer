other
doIt
	"This method is called by Orbeon when the Form Builder is about to be Opened.
	It show the available -Library- forms for the application named <appName> "
	| application latestDefinition |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^restHandler noRouteFound: self requestContext].

	version := headerValue ifNil: [application getLastFormDefinitionVersionOf: 'library'] ifNotNil: [Number fromString: headerValue].

	latestDefinition := application getSavedDefinition: 'library' version: version ifNone: [^restHandler noRouteFound: self requestContext].
	latestDefinition isDeleted ifTrue: [^restHandler noRouteFound: self requestContext].

	^((GRCodec forEncoding: 'utf-8') decode: latestDefinition xmlString) asString