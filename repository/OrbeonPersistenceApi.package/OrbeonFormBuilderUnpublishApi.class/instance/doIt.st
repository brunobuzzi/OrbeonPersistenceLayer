other
doIt
	"This method is called by Orbeon when a Form Definition has been unpublished with form name <formName> in application <app>"
	| application publishedDefinition savedDefinition |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^NoApplicationException signal: 'No such application [', self getApplicationName, ']'].
	publishedDefinition := application definitionNamed: self getFormName ifNone: [^NoOrbeonFormException signal: 'No such form [', self getFormName, '] in application [', self getApplicationName, ']'].
	savedDefinition := publishedDefinition definition.

	publishedDefinition switchAvailable.
	savedDefinition switchAvailable.

	^publishedDefinition xmlString