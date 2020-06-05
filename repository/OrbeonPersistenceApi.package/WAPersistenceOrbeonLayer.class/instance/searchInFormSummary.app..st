service-post
searchInFormSummary: formName app: app
	"This service is called in two different situations:
	1- When rendering an Orbeon Form Summary page and answer a well formatted XML with the result of the query received in the request. This XML is going to be displayed in the Orbeon Form Summary page
	2- When a form instance is going to be rendered is called to find out if a form instance with certain <id> has a draft to be displayed"
	| application definition searchApi version |
	<post>
	<produces: 'application/xml'>
	<path: '/search/{2}/{1}'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^self noRouteFound: self requestContext "^self signalNoApplicationException: app"].
	version := (self requestContext request headerAt: 'orbeon-form-definition-version') asInteger.
	definition := application getDefinitionNamed: formName withVersion: version ifNone: [^self noRouteFound: self requestContext "^self signalNoFormException: formName app: app"].

	definition isDeleted ifTrue: [^self noRouteFound: self requestContext].

	searchApi := OrbeonInstanceSearchApi newFor: self withXml: (self requestContext request bodyDecodeUsing: 'utf-8') application: application form: definition.

	searchApi setPageSize;
					setPageNumber;
					group: (self requestContext request headerAt: 'orbeon-group');
					user: (self requestContext request headerAt: 'orbeon-username');
					version: version;
					setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials').

	searchApi doIt.

	^searchApi generateXmlAnswer