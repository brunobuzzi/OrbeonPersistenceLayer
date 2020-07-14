other
doItAndSetVersion: setVersionBlock ifNotFound: notFoundBlock
	"This method is called by Orbeon when a Form Definition (inside the Builder) is about to be Published.
	This method answer the latest version of the form definition <formName> in application <app>.
	Using the header <orbeon-form-definition-version> to set the version number.
	It also called when a new Form Instance page is about to be displayed (app/form/new)"
	| application latestDefinition headerVersion |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^notFoundBlock value].

	headerVersion := headerVersionValue ifNil: [application getLastFormDefinitionVersionOf: self getFormName] ifNotNil: [Number fromString: headerVersionValue].

	"fix issue #340"
	latestDefinition := application getDefinitionNamed: formName withVersion: headerVersion ifNone: [^notFoundBlock value].

	setVersionBlock value: latestDefinition printVersion.

	latestDefinition isDeleted ifTrue: [^notFoundBlock value].

	"^self decodeFromUTF8: latestDefinition xmlString"

	"^latestDefinition xmlString decodeFromUTF8ToString"

	^latestDefinition xmlString