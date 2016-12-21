form-sales-customer
testSaveFormDefinitionSalesCustomer
"	<put>
	<path: '/crud/orbeon/builder/data/{id}/data.xml/?valid={aBoolean}'>
"
	| result id |

	id := self getSavedDefinitionId: 'customer' in: 'sales-application'.

	self setClientUrlToSaveFormDefinitionWithId: id.

	restClient contents: OrbeonFormDefinitionTemplate form_sales_application.
					
	result := restClient put.

	self assert: restClient isSuccess.