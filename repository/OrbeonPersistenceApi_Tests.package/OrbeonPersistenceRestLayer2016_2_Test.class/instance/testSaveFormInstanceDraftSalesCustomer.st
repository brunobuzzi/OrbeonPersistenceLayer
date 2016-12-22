form-sales-customer
testSaveFormInstanceDraftSalesCustomer
"	<put>
	<produces: 'application/xml'>
	<path: '/crud/{app}/{form-name}/draft/{id}/data.xml?valid={true|false}'>
"
	| result id version |

	version := (self getOrbeonApplicationClass getLatestSavedDefinition: 'customer' app: 'sales-application' ifNone: [nil]) ifNotNil: [:def | def version printString] ifNil: ['1'].
	id := UUID new asString.

	self setClientUrlToSaveFormDraft: 'customer' in: 'sales-application' id: id.

	restClient 
		headerAt: 'orbeon-form-definition-version' put: version;
		entity: ((ZnStringEntity xml: OrbeonFormInstanceTemplate form_sales_application_01) contentType: ZnMimeType applicationXml).

	result := restClient put.

	self assert: restClient isSuccess.