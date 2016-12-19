other
testPublishNewForm
"	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>
"
	| result id |

	id := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def id] ifNil: [UUID new asString].

	restClient 
		entity: ((ZnStringEntity xml: OrbeonFormDefinitionTemplate form_test_2) contentType: ZnMimeType applicationXml);
		headerAt: 'orbeon-form-definition-version' put: 'next';
		url: 'http://192.168.29.142:8787/orbeon-gemstone-api/crud/agesic/test-2/form/form.xhtml?document=', id.

	result := restClient put.

	self assert: restClient isSuccess.