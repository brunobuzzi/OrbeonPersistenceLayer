other
execute
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| latestSavedDefinition savedDefinition formName appName |

	appName := formReader getApplicationName.
	formName := formReader getFormName.

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: formName app: appName ifNone: [nil].
	version := (self getOrbeonApplicationClass getDefinitionWithId: id ifNone: [nil]) ifNil: [1] ifNotNil: [:def | def version].

	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"

	(self isCreationRejectedFor: latestSavedDefinition inApp: appName form: formName) 
	ifFalse: [self ifRequiredUpdateFormInApplication: appName andFormName: formName] "if the <formName> or <appName> has been changed"
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', formName,'] in application [', appName, ']'].

	savedDefinition := self createSavedDefinitionNamed: formName 
									in: appName 
									title: self getTitle
									description: self getDescription. "here the OrbeonFormDefinition is created and associate to the receiver <savedDefinition>"

	self moveFromTempPathFileOf: savedDefinition. "move attachments if it is the case -issue #37-"