form-sales-customer
testFormSummarySalesCustomer
"	<post>
	<produces: 'application/xml'>
	<path: '/search/{2}/{1}'>
"
	| result |

	self setClientUrlForFormSummary: 'customer' in: 'sales-application'.

	restClient entity: ((ZnStringEntity xml: self orbeonFormSummaryQuery) contentType: ZnMimeType applicationXml).

	result := restClient post.

	self assert: restClient isSuccess.