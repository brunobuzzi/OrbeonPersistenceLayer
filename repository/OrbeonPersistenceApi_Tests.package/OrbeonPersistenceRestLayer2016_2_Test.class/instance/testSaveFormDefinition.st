service-put
testSaveFormDefinition
"	<put>
	<path: '/crud/orbeon/builder/data/{id}/data.xml/?valid={aBoolean}'>
"
	| result id |

	id := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def id] ifNil: [UUID new asString].

	self setClientUrlToSaveFormDefinitionWithId: id.

	restClient contents: OrbeonFormDefinitionTemplate form_test_2.
					
	result := restClient put.

	self assert: restClient isSuccess.