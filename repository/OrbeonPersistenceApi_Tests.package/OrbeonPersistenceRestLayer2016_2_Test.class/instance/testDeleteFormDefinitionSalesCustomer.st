form-sales-customer
testDeleteFormDefinitionSalesCustomer
"	<delete>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>
"
	| result id |

	id := (self getOrbeonApplicationClass getLatestSavedDefinition: 'customer' app: 'sales-application' ifNone: [nil]) ifNotNil: [:def | def id] ifNil: [self assert: false] .

	self setClientUrlToDeleteFormDefinitionWithId: id.

	result := restClient delete.

	self assert: restClient isSuccess.