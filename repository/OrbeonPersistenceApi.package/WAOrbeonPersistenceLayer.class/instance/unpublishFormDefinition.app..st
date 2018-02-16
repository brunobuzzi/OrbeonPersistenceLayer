service-put
unpublishFormDefinition: formName app: app
	"This method is called by Orbeon when a Form Definition has been unpublished with form name <formName> in application <app>"
	| apiOperation |
	<put>
	<path: '/crud/{2}/{1}/form/form.xhtml'>

	apiOperation := OrbeonFormBuilderUnpublishApi newFor: self.
	apiOperation appName: app;
		formName: formName.

	apiOperation doIt