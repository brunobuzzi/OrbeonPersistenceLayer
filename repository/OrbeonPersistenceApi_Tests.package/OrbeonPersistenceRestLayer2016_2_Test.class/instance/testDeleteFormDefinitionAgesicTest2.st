form-agesic-test-2
testDeleteFormDefinitionAgesicTest2
"	<delete>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>
"
	| result id |

	id := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def id] ifNil: [self assert: false] .

	self setClientUrlToDeleteFormDefinitionWithId: id.

	result := restClient delete.

	self assert: restClient isSuccess.