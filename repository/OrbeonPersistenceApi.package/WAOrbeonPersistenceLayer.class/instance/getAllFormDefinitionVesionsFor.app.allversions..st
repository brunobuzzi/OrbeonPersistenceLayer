service-get
getAllFormDefinitionVesionsFor: formName app: app allversions: aStringBoolean
	"Implemented as stated in: 
	https://doc.orbeon.com/form-runner/api/persistence/forms-metadata.html#returning-all-form-definition-versions"
	| application registry xmlWriter getAllVersions |
	<get>
	<produces: 'application/xml'>
	<path: '/form/{2}/{1}?all-versions={3}'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^self noRouteFound: self requestContext].

	registry := application registryForFormNamed: formName ifNone: [^self noRouteFound: self requestContext].

	getAllVersions := aStringBoolean = 'true'.
	getAllVersions ifFalse: [^registry getLastVersionNumber].
 
	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			registry currentVersions do: [:publishedVersion | self generateXmlNodeForFormBuilderVersionList: publishedVersion with: writer].
		].
	].

	^xmlWriter contents