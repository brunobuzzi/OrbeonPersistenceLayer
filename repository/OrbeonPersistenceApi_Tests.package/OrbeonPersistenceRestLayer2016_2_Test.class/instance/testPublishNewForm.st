service-put
testPublishNewForm
"	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>
"
	| result id |

	id := (self getOrbeonApplicationClass getLatestSavedDefinition: 'test-2' app: 'agesic' ifNone: [nil]) ifNotNil: [:def | def id] ifNil: [UUID new asString].

	self setClientUrlToPublishFormDefinition: 'test-2' in: 'agesic' id: id.

	restClient 
		entity: ((ZnStringEntity xml: OrbeonFormDefinitionTemplate form_test_2) contentType: ZnMimeType applicationXml);
		headerAt: 'orbeon-form-definition-version' put: 'next'.

	result := restClient put.

	self assert: restClient isSuccess.