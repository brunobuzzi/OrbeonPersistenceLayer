other
testSaveFormInstance
"	<put>
	<produces: 'application/xml'>
	<path: '/crud/{app}/{form-name}/data/{id}/data.xml?valid={true|false}'>
"
	| result id version |

	version := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def version printString] ifNil: ['1'].
	id := UUID new asString.

	restClient 
		headerAt: 'orbeon-form-definition-version' put: version;
		entity: ((ZnStringEntity xml: OrbeonFormInstanceTemplate form_test_2) contentType: ZnMimeType applicationXml);
		url: 'http://192.168.29.142:8787/orbeon-gemstone-api/crud/agesic/test-2/data/', id, '/data.xml?valid=true'.

	result := restClient put.

	self assert: restClient isSuccess.