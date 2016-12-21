form-agesic-test-2
testSaveFormInstanceDraftAgesicTest2
"	<put>
	<produces: 'application/xml'>
	<path: '/crud/{app}/{form-name}/draft/{id}/data.xml?valid={true|false}'>
"
	| result id version |

	version := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def version printString] ifNil: ['1'].
	id := UUID new asString.

	self setClientUrlToSaveFormDraft: 'test-2' in: 'agesic' id: id.

	restClient 
		headerAt: 'orbeon-form-definition-version' put: version;
		entity: ((ZnStringEntity xml: OrbeonFormInstanceTemplate form_test_2) contentType: ZnMimeType applicationXml).

	result := restClient put.

	self assert: restClient isSuccess.