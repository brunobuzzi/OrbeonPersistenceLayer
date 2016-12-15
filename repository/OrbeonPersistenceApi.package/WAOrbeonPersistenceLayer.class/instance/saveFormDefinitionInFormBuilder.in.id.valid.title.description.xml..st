service-put-op
saveFormDefinitionInFormBuilder: formName in: appName id: id valid: aBoolean title: title description: description xml: xmlString
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| currentDefinition savedDefinition version |

	currentDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: formName app: appName ifNone: [nil].
	version := (self getOrbeonApplicationClass getDefinitionWithId: id ifNone: [nil]) ifNil: [1] ifNotNil: [:def | def version].

	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"

	(self isCreationRejectedFor: currentDefinition withId: id inApp: appName form: formName) 
	ifFalse: [self ifRequiredUpdateFormWithId: id withApplicationName: appName andFormName: formName] "if the <formName> or <appName> has been changed"
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', formName,'] in application [', appName, ']'].

	savedDefinition := self createSavedDefinitionNamed: formName 
									in: appName 
									version: version 
									id: id 
									title: title
									description: description
									xml: xmlString. "here the OrbeonFormDefinition is created and associate to the receiver <savedDefinition>"

	savedDefinition getApplication addSavedDefinition: savedDefinition.

	self moveFromTempPathFileOf: savedDefinition. "move attachments if it is the case -issue #37-"