service-delete
deleteFormDraft: formName app: app withId: id
	"This method is called by Orbeon when a user click 'Delete' in a Form Instance Draft in the Form Runner page"
	| apiOperation |
	<delete>
	<path: '/crud/{2}/{1}/draft/{3}/data.xml'>

	apiOperation := OrbeonFormDraftDeleteApi newFor: self id: id.
	apiOperation appName: app;
		formName: formName.

	apiOperation doIt