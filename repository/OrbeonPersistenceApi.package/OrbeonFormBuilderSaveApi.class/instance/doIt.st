other
doIt
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| latestSavedDefinition |

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: self getFormName app: self getApplicationName ifNone: [nil].
	version := (self getOrbeonApplicationClass getDefinitionWithId: id ifNone: [nil]) ifNil: [1] ifNotNil: [:def | def version].

	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"

	(restHandler isCreationRejectedFor: latestSavedDefinition withId: id appName: self getApplicationName formName: self getFormName) 
	ifFalse: [self ifRequiredUpdateForm] "if the <formName> or <appName> has been changed"
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', self getFormName,'] in application [', self getApplicationName, ']'].

	savedFormDefinition := self createSavedDefinition. "here the OrbeonFormDefinition is created and associate to the receiver <savedFormDefinition>"

	self moveFromTempPathFileOf: savedFormDefinition. "move attachments if it is the case -issue #37-"

	^savedFormDefinition xmlString