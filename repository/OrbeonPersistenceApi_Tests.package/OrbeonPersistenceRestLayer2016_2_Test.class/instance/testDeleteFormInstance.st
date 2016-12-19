other
testDeleteFormInstance
"	<delete>
	<path: '/crud/{app}/{form-name}/data/{id}/data.xml'>
"
	| result id |

	id := UUID new asString.

	restClient 
		entity: ((ZnStringEntity xml: OrbeonFormInstanceTemplate form_test_2) contentType: ZnMimeType applicationXml);
		url: 'http://192.168.29.142:8787/orbeon-gemstone-api/crud/agesic/test-2/data/', id, '/data.xml'.

	result := restClient delete.

	self assert: restClient isSuccess.