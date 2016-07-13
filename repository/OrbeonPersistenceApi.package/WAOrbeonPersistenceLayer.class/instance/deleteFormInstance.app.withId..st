service-delete
deleteFormInstance: formName app: app withId: id
	"This method is called by Orbeon when a user click -Send- in a Form Instance page"
	| application instance |
	<delete>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^NoApplicationException signal: 'No application named [', app, '] was found'].

	instance := application getAnyInstanceWithId: id of: formName.

	instance logicalDelete