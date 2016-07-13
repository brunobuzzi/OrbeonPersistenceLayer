service-get
getOrbeonFr
	"This service is called when accessing Form Runner Home: ../orbeon/fr/ "
	| xmlWriter |
	<get>
	<produces: 'application/xml'>
	<path: '/form'>

	xmlWriter := XMLWriter new.
	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [self getOrbeonApplicationClass getLastDefinitions do: [:eachDef | 
			self getXmlNodeFor: eachDef with: writer]].
	].

	^xmlWriter contents