service-delete
testDeleteFormInstanceDraft
"	<delete>
	<path: '/crud/{app}/{form-name}/draft/{id}/data.xml'>
"
	| result id |

	(self getOrbeonApplicationClass formDefinitionNamed: 'test-2' in: 'agesic') 
		ifNil: [self assert: false] 
		ifNotNil: [:def | def drafts keysAndValuesDo: [:key :col | col do: [:each | each isDeleted ifFalse: [id := each id]]]]. 

	restClient url: 'http://192.168.29.142:8787/orbeon-gemstone-api/crud/agesic/test-2/draft/', id, '/data.xml'.

	result := restClient delete.

	self assert: restClient isSuccess.