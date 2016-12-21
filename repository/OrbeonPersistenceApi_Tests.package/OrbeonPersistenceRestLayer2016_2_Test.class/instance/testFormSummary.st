service-post
testFormSummary
"	<post>
	<produces: 'application/xml'>
	<path: '/search/{2}/{1}'>
"
	| result |

	restClient 
		entity: ((ZnStringEntity xml: self orbeonFormSummaryQuery) contentType: ZnMimeType applicationXml);
		url: self gemstoneIP, '/orbeon-gemstone-api/search/agesic/test-2'.

	result := restClient post.

	self assert: restClient isSuccess.