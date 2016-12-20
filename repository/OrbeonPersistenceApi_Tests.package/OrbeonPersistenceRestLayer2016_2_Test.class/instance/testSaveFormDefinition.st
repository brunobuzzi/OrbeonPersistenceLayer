services
testSaveFormDefinition
"	<put>
	<path: '/crud/orbeon/builder/data/{id}/data.xml/?valid={aBoolean}'>
"
	| result id |

	id := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def id] ifNil: [UUID new asString].

	result := restClient 
					put: 'http://192.168.29.142:8787/orbeon-gemstone-api/crud/orbeon/builder/data/', id, '/data.xml/?valid=true' 
					contents: OrbeonFormDefinitionTemplate form_test_2.

	self assert: restClient isSuccess.