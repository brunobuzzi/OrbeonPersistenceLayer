service-delete
testDeleteFormInstance
"	<delete>
	<path: '/crud/{app}/{form-name}/data/{id}/data.xml'>
"
	| result id |

	id := (self getOrbeonApplicationClass formDefinitionNamed: 'test-2' in: 'agesic') 
				ifNil: [self assert: false] 
				ifNotNil: [:def | (def instances asArray detect: [:inst| inst deleted = 'N'] ifNone: [self assert: false]) id].

	restClient url: self gemstoneIP, '/orbeon-gemstone-api/crud/agesic/test-2/data/', id, '/data.xml'.

	result := restClient delete.

	self assert: restClient isSuccess.