service-get
getOrbeonFr
	"This service is called when accessing Form Runner Home: ../orbeon/fr/ "
	<get>
	<produces: 'application/xml'>
	<path: '/form'>

	^(OrbeonFrPageApi newFor: self) doIt