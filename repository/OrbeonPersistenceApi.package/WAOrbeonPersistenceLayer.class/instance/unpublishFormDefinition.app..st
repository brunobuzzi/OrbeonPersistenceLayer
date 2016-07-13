service-put
unpublishFormDefinition: formName app: app
	"This method is called by Orbeon when a Form Definition has been unpublished with form name <formName> in application <app>"
	| application definition |
	<put>
	<path: '/crud/{2}/{1}/form/form.xhtml'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^NoApplicationException signal: 'No such application [', app, ']'].
	definition := application definitionNamed: formName ifNone: [^NoOrbeonFormException signal: 'No such form [', formName, '] in application [', app, ']'].

	definition switchAvailable