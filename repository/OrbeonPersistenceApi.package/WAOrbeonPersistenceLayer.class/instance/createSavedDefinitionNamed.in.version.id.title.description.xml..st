service-put-op
createSavedDefinitionNamed: formName in: appName version: version id: id title: title description: description xml: xmlString
	"The receiver creates <anOrbeonSavedFormDefinition> named <formName> in the <OrbeonApplication> named <appName> with version number <version> with id <id> with title <title> with description <description> from XML string <xmlString>.
	In the process it create & associate the <anOrbeonSavedFormDefinition> with <anOrbeonPublishedFormDefinition>"
	| savedDefinition |

	savedDefinition := OrbeonSavedFormDefinition app: appName form: formName.

	savedDefinition id: id;
		version: version;
		title: title;
		description: description;
		setXmlString: xmlString; "here the <OrbeonPublishedFormDefinition> is created and associate to the receiver <savedDefinition>"
		updateLastModifiedTime;
		yourself.

	savedDefinition storeInApplication. "anOrbeonApplication addSavedDefinition: savedDefinition"

	(self apiConfiguration isDefinitionAuditEnableFor: savedDefinition formName in: savedDefinition getApplicationName) 
	ifTrue: [self auditStorage addDefinitionAudit: savedDefinition cloneForAudit].

	^savedDefinition