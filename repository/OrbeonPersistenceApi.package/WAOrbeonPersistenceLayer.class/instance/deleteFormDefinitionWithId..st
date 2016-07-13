service-delete
deleteFormDefinitionWithId: id
	"This method is called by Orbeon when a user click 'Send' in a Form Instance page"
	<delete>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>

	self getOrbeonApplicationClass logicalRemoveDefinitionWithId: id ifNone: [nil]