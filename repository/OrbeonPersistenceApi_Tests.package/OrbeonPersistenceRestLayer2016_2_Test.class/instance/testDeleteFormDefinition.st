other
testDeleteFormDefinition
"	<delete>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>
"
	| result id |

	id := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def id] ifNil: [self assert: false] .

	restClient url: 'http://192.168.29.142:8787/orbeon-gemstone-api/crud/orbeon/builder/data/', id, '/data.xml'.

	result := restClient delete.

	self assert: restClient isSuccess.