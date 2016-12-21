form-agesic-test-2
testPublishNewFormAgesicTest2
"	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>
"
	| result id |

	id := self getSavedDefinitionId: 'test-2' in: 'agesic'.

	self setClientUrlToPublishFormDefinition: 'test-2' in: 'agesic' id: id.

	restClient 
		entity: ((ZnStringEntity xml: OrbeonFormDefinitionTemplate form_test_2) contentType: ZnMimeType applicationXml);
		headerAt: 'orbeon-form-definition-version' put: 'next'.

	result := restClient put.

	self assert: restClient isSuccess.