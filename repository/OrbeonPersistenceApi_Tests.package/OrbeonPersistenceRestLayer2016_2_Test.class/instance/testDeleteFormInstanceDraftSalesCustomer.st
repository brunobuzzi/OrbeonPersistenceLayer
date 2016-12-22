form-sales-customer
testDeleteFormInstanceDraftSalesCustomer
"	<delete>
	<path: '/crud/{app}/{form-name}/draft/{id}/data.xml'>
"
	| result id |

	(self getOrbeonApplicationClass formDefinitionNamed: 'customer' in: 'sales-application') 
		ifNil: [self assert: false] 
		ifNotNil: [:def | def drafts keysAndValuesDo: [:key :col | col do: [:each | each isDeleted ifFalse: [id := each id]]]]. 

	self setClientUrlToDeleteFormDraft: 'customer' in: 'sales-application' id: id.

	result := restClient delete.

	self assert: restClient isSuccess.