other
createAndStoreSavedDefinitionOnApplication
	"The receiver creates <anOrbeonSavedFormDefinition> named <formName> in the <OrbeonApplication> named <appName> with version number <version> with id <id> with title <title> with description <description> from XML string <xmlString>.
	In the process it create & associate the <anOrbeonSavedFormDefinition> with <anOrbeonPublishedFormDefinition>"
	| savedDefinition |


	savedDefinition := systemRoot buildSavedFormNamed: self getFormName id: id version: version withXml: xmlString in: (systemRoot getExistingApplicationOrCreateNewNamed: self getApplicationName).

	"savedDefinition := self createOrbeonSavedDefinition."

"	savedDefinition id: id;
		version: version;
		setXmlString: xmlString; 
		updateLastModifiedTime;
		setTitleAndDescription;
		yourself."

	"savedDefinition storeInApplication. "

	(systemRoot isDefinitionAuditEnableFor: savedDefinition formName in: savedDefinition getApplicationName) 
	ifTrue: [self auditStorage addDefinitionAudit: savedDefinition cloneForAudit].

	^savedDefinition