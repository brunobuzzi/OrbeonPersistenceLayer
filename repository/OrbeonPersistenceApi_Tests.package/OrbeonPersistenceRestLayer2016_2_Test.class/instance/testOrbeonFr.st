general
testOrbeonFr
	"This service is called when accessing Form Runner Home: ../orbeon/fr/ "
"	<get>
	<produces: 'application/xml'>
	<path: '/form'>
"
	| result |

	restClient 
		url: self gemstoneIP, '/orbeon-gemstone-api/form'.

	result := restClient get.

	self assert: restClient isSuccess.