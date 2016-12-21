form-agesic-test-2
testDeleteFormDefinitionAgesicTest2
"	<delete>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>
"
	| result id |

	id := self getSavedDefinitionId: 'test-2' in: 'agesic'.

	self setClientUrlToDeleteFormDefinitionWithId: id.

	result := restClient delete.

	self assert: restClient isSuccess.