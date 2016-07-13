service-put
saveDraftFormInstance: formName app: app withId: id valid: aBoolean
	"This method is called by Orbeon when a Form is autosaved in a Form Instance page"
	| application definition orbeonDraft version |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/draft/{3}/data.xml?valid={4}'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^self signalNoApplicationException: app].
	version := Number fromString: (self requestContext request headerAt: 'orbeon-form-definition-version').
	definition := application getDefinitionNamed: formName withVersion: version ifNone: [^self signalNoFormException: formName id: id app: app version: version].
	orbeonDraft := definition getDraftWithId: id ifNone: [definition addDraft: (OrbeonFormInstance newFor: definition withId: id)].

	"execute the audit options. if <xmlString> is nil --> is a new form"
	(orbeonDraft xmlString isNil and:[self apiConfiguration isDraftAuditEnableFor: formName in: app]) 
	ifTrue: [self auditStorage addDraftAudit: orbeonDraft cloneForAudit].

	orbeonDraft xmlString: self requestContext request rawBody;
		definition: definition;
		draft: 'Y';
		version: version;
		username:  (self requestContext request headerAt: 'orbeon-username'); "BUG - creator set only one time"
		modifiedUser: (self requestContext request headerAt: 'orbeon-username');
		groupname: (self requestContext request headerAt: 'orbeon-group');
		updateLastModifiedTime;
		processXMLSections. "create the sections and fields but NOT the FormFieldValues"