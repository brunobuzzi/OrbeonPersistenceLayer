service-delete
testDeleteFormInstance
"	<delete>
	<path: '/crud/{app}/{form-name}/data/{id}/data.xml'>
"
	| result id |

	id := (self getOrbeonApplicationClass formDefinitionNamed: 'test-2' in: 'agesic') 
				ifNil: [self assert: false] 
				ifNotNil: [:def | (def instances asArray detect: [:inst| inst deleted = 'N'] ifNone: [self assert: false]) id].

	self setClientUrlToDeleteFormInstance: 'test-2' in: 'agesic' id: id.

	result := restClient delete.

	self assert: restClient isSuccess.