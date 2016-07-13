service-put
saveInFormBuilderDefinitionWithId: id valid: aBoolean
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| currentDefinition savedDefinition version xmlDocument appName formName xmlString |
	<put>
	<path: '/crud/orbeon/builder/data/{1}/data.xml/?valid={2}'>

	xmlString := self requestContext request rawBody.
	xmlDocument := XMLDOMParser parse: xmlString.
	appName := self getApplicationNameFrom: xmlDocument ifNone: [nil].
	formName := self getFormNameFrom: xmlDocument ifNone: [nil].

	currentDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: formName app: appName ifNone: [nil].
	version := (self getOrbeonApplicationClass getDefinitionWithId: id ifNone: [nil]) ifNil: [1] ifNotNil: [:def | def version].

	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"

	(self isCreationRejectedFor: currentDefinition withId: id inApp: appName form: formName) 
	ifFalse: [self ifRequiredUpdateFormWithId: id withApplicationName: appName andFormName: formName]
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', formName,'] in application [', appName, ']'].

	savedDefinition := self createSavedDefinitionNamed: formName 
									in: appName 
									version: version 
									id: id 
									title: (self getFormTitleFrom: xmlDocument ifNone: ['']) 
									description: (self getFormDescriptionFrom: xmlDocument ifNone: ['']) 
									xml: xmlString. "here the OrbeonFormDefinition is created and associate to the receiver <savedDefinition>"

	savedDefinition getApplication addSavedDefinition: savedDefinition.

	self moveFromTempPathFileOf: savedDefinition. "move attachments if it is the case -issue #37-"