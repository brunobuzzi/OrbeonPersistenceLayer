service-post
searchInFormBuilderSummary
	"This service is called by Orbeon when rendering an Orbeon Form Builder Summary page and
	answer a well formatted XML with the result of the query received in the request.
	This XML is going to be displayed in the Orbeon Form Builder Summary page"	
	| searchApi |
	<post>
	<produces: 'application/xml'>
	<path: '/search/orbeon/builder'>

	searchApi := OrbeonDefinitionSearchApi new.
	searchApi xmlSearchDefinitionDocument: (XMLDOMParser parse: self requestContext request rawBody).
	searchApi getPageSize;
				getPageNumber;
				group: (self requestContext request headerAt: 'orbeon-group');
				user: (self requestContext request headerAt: 'orbeon-username').

	searchApi doIt. 

	^searchApi generateXmlAnswerForBuilderSummary