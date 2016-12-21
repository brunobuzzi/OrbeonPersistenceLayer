form-agesic-test-2
testFormSummaryAgesicTest2
"	<post>
	<produces: 'application/xml'>
	<path: '/search/{2}/{1}'>
"
	| result |

	self setClientUrlForFormSummary: 'test-2' in: 'agesic'.

	restClient entity: ((ZnStringEntity xml: self orbeonFormSummaryQuery) contentType: ZnMimeType applicationXml).

	result := restClient post.

	self assert: restClient isSuccess.