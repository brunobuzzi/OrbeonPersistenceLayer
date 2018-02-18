service-delete
deleteFormDefinitionWithId: id
	"This method is called by Orbeon when a user click 'Delete' in a Form Definition in the Form Runner page"
	<delete>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>

	^(OrbeonFormDefinitionDeleteApi newFor: self id: id) doIt