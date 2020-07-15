other
doIt
	"Implemented as stated in: 
	https://doc.orbeon.com/form-runner/api/persistence/forms-metadata.html#returning-all-form-definition-versions"
	| application xmlWriter |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^'<form/>'].

	(application hasRegistryForFormNamed: self getFormName) ifFalse: [^'<form/>'].

	allversions := allversions = 'true'. "the original values is <aString>"
	allforms := allforms = 'true'. "the original values is <aString>"

	allversions ifFalse: [^application getLastVersionNumberOf: self getFormName].
 
	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			application currentVersionsOf: self getFormName do: [:publishedVersion | self generateXmlNodeForFormBuilderVersionList: publishedVersion with: writer].
		].
	].

	^xmlWriter contents