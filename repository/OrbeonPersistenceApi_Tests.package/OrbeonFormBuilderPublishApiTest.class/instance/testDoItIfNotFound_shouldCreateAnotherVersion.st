other
testDoItIfNotFound_shouldCreateAnotherVersion
	| latestSavedDefinition currentPublishedVersion |
 
	currentPublishedVersion := self getOrbeonApplicationClass formDefinitionNamed: apiOperation formName in: apiOperation appName.
	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	apiOperation 
		xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_simple_registration_shouldCreateAnotherVersion;
		headerVersion: latestSavedDefinition printVersion;
		id: latestSavedDefinition id.

	apiOperation doItIfNotFound: [self assert: false].

	"the structre of this version has to be different from the current in order to create another version with the same number"