service-get
testOrbeonFr
	"This service is called when accessing Form Runner Home: ../orbeon/fr/ "
"	<get>
	<produces: 'application/xml'>
	<path: '/form'>
"
	| result |

	restClient 
		url: 'http://192.168.29.142:8787/orbeon-gemstone-api/form'.

	result := restClient get.

	self assert: restClient isSuccess.