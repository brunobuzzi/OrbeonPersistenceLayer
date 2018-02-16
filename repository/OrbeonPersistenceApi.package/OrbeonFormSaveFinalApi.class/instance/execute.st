other
execute
	| application definition instance |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^self signalNoApplicationException: self getApplicationName].
	definition := application getDefinitionNamed: self getFormName withVersion: version ifNone: [^self signalNoFormException: self getFormName id: id app: self getApplicationName version: version].
	instance := definition 
				getInstanceWithId: id 
				ifNone: [definition getDraftWithId: id ifNone: [OrbeonFormInstance newFor: definition withId: id]].

	"execute the audit options. if <xmlString> is nil --> is a new form"
	(instance xmlString notNil and:[self apiConfiguration isInstanceAuditEnableFor: self getFormName in: self getApplicationName]) 
	ifTrue: [self auditStorage addInstanceAudit: instance cloneForAudit].

	instance xmlString: self requestContext request rawBody;
		draft: 'N';
		definition: definition;
		version: version;
		username: username; "BUG - creator set only one time"
		modifiedUser: modifiedUser;
		groupname: groupname;
		isValid: isValid;
		updateLastModifiedTime.

	(self apiConfiguration isDeferredProcessing: self getFormName in: self getApplicationName) 
	ifTrue: [self addDeferredProcessingFor: instance] 
	ifFalse: [instance processXML].

	definition removeDraft: instance. "this is the final version so we remove the current draft if any"