other
doIt
	"Implemented as stated in: 
	https://doc.orbeon.com/form-runner/api/persistence/forms-metadata.html#returning-all-form-definition-versions"
	| application registry xmlWriter getAllVersions |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^restHandler noRouteFound: restHandler requestContext].

	registry := application registryForFormNamed: self getFormName ifNone: [^restHandler noRouteFound: restHandler requestContext].

	getAllVersions := allversions = 'true'.
	getAllVersions ifFalse: [^registry getLastVersionNumber].
 
	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			registry currentVersions do: [:publishedVersion | self generateXmlNodeForFormBuilderVersionList: publishedVersion with: writer].
		].
	].

	^xmlWriter contents