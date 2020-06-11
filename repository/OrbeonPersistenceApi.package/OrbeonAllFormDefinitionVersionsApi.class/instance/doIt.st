other
doIt
	"Implemented as stated in: 
	https://doc.orbeon.com/form-runner/api/persistence/forms-metadata.html#returning-all-form-definition-versions"
	| application registry xmlWriter |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^'<form/>'].

	registry := application registryForFormNamed: self getFormName ifNone: [^'<form/>'].

	allversions := allversions = 'true'. "the original values is <aString>"
	allforms := allforms = 'true'. "the original values is <aString>"

	allversions ifFalse: [^registry getLastVersionNumber].
 
	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			registry currentVersionsDo: [:publishedVersion | self generateXmlNodeForFormBuilderVersionList: publishedVersion with: writer].
		].
	].

	^xmlWriter contents