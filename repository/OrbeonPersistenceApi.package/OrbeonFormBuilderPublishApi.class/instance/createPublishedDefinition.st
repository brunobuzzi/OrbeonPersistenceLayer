other
createPublishedDefinition
	"The receiver create a new definition <anOrbeonFormDefinition> named <formName> in application <anOrbeonApplication> with id <id>"
	| anOrbeonPublishedDefinition |

	anOrbeonPublishedDefinition := self defaultPublishedFormDefinitionClass 
														buildDefinitionFrom: xmlString 
														name: self getFormName 
														version: version 
														id: id
														in: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: self getApplicationName).

	^anOrbeonPublishedDefinition "new definition to be published"
		id: id;
		updateLastModifiedTime;
		version: version;
		setTitleAndDescription;
		xmlString: xmlString;
		publish;
		buildForm