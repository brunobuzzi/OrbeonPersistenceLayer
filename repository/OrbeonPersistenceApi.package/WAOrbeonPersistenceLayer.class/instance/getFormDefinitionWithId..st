service-get
getFormDefinitionWithId: id 
	"This service is called when a click is performed on the Orbeon Form Builder Summary page.
	The Summary then should open the Orbeon Builder with the code of the clicked form."
	<get>
	<produces: 'application/xml'>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>

	^((GRCodec forEncoding: 'utf-8') 
		decode: (self getOrbeonApplicationClass getSavedDefinitionWithId: id ifNone: [^NoOrbeonFormException signal: ('No Form Definition with id:' , id)]) xmlString) asString