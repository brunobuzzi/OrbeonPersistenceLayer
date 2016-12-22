form-sales-customer
testDeleteFormInstanceSalesCustomer
"	<delete>
	<path: '/crud/{app}/{form-name}/data/{id}/data.xml'>
"
	| result id |

	id := (self getOrbeonApplicationClass formDefinitionNamed: 'customer' in: 'sales-application') 
				ifNil: [self assert: false] 
				ifNotNil: [:def | (def instances asArray detect: [:inst| inst deleted = 'N'] ifNone: [self assert: false]) id].

	self setClientUrlToDeleteFormInstance: 'customer' in: 'sales-application' id: id.

	result := restClient delete.

	self assert: restClient isSuccess.