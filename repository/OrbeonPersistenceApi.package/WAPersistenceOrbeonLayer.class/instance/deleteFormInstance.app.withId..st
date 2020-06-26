service-delete
deleteFormInstance: formName app: app withId: id
	"This method is called by Orbeon when a user click 'Delete' in a Form Instance in the Form Runner page"
	| apiOperation |
	<delete>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	apiOperation := OrbeonFormInstanceDeleteApi newWithId: id.
	apiOperation appName: app;
		formName: formName;
		doIt.

	^apiOperation