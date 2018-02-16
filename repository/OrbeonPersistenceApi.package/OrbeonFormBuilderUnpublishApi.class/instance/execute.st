other
execute
	"This method is called by Orbeon when a Form Definition has been unpublished with form name <formName> in application <app>"
	| application definition |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^NoApplicationException signal: 'No such application [', self getApplicationName, ']'].
	definition := application definitionNamed: self getFormName ifNone: [^NoOrbeonFormException signal: 'No such form [', self getFormName, '] in application [', self getApplicationName, ']'].

	definition switchAvailable