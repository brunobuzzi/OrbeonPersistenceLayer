service-post
testFormSummary
"	<post>
	<produces: 'application/xml'>
	<path: '/search/{2}/{1}'>
"
	| result |

	restClient 
		entity: ((ZnStringEntity xml: self orbeonFormSummaryQuery) contentType: ZnMimeType applicationXml);
		url: 'http://192.168.29.142:8787/orbeon-gemstone-api/search/agesic/test-2'.

	result := restClient post.

	self assert: restClient isSuccess.