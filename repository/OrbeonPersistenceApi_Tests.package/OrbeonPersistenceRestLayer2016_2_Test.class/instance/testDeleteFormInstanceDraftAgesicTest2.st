form-agesic-test-2
testDeleteFormInstanceDraftAgesicTest2
"	<delete>
	<path: '/crud/{app}/{form-name}/draft/{id}/data.xml'>
"
	| result id |

	(self getOrbeonApplicationClass formDefinitionNamed: 'test-2' in: 'agesic') 
		ifNil: [self assert: false] 
		ifNotNil: [:def | def drafts keysAndValuesDo: [:key :col | col do: [:each | each isDeleted ifFalse: [id := each id]]]]. 

	self setClientUrlToDeleteFormDraft: 'test-2' in: 'agesic' id: id.

	result := restClient delete.

	self assert: restClient isSuccess.