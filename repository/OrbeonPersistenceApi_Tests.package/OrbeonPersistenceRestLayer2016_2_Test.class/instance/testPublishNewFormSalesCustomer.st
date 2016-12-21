form-sales-customer
testPublishNewFormSalesCustomer
"	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>
"
	| result id |

	id := self getSavedDefinitionId: 'customer' in: 'sales-application'.

	self setClientUrlToPublishFormDefinition: 'customer' in: 'sales-application' id: id.

	restClient 
		entity: ((ZnStringEntity xml: OrbeonFormDefinitionTemplate form_sales_application) contentType: ZnMimeType applicationXml);
		headerAt: 'orbeon-form-definition-version' put: 'next'.

	result := restClient put.

	self assert: restClient isSuccess.