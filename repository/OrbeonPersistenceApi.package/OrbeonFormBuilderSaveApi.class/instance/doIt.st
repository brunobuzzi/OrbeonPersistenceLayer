other
doIt
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| latestSavedDefinition savedDefinition |

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: self getFormName app: self getApplicationName ifNone: [nil].
	version := (self getOrbeonApplicationClass getDefinitionWithId: id ifNone: [nil]) ifNil: [1] ifNotNil: [:def | def version].

	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"

	(self isCreationRejectedFor: latestSavedDefinition) 
	ifFalse: [self ifRequiredUpdateForm] "if the <formName> or <appName> has been changed"
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', self getFormName,'] in application [', self getApplicationName, ']'].

	savedDefinition := self createSavedDefinitionNamed. "here the OrbeonFormDefinition is created and associate to the receiver <savedDefinition>"

	self moveFromTempPathFileOf: savedDefinition. "move attachments if it is the case -issue #37-"