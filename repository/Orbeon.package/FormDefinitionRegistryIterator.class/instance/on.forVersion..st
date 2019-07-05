stream
on: aFormDefinitionRegistry forVersion: version
	"The receiver initialize the <definitionRegistry> with <aFormDefinitionRegistry> and set the <currentVersion> with <version>.
	<versions> is set with a collection of <OrbeonPublishedFormDefinition> with version number equal to <version>"

	definitionRegistry := aFormDefinitionRegistry.

	currentVersion := version.

	versions := (aFormDefinitionRegistry getAllVersion: currentVersion) reverse. "the lastest version is the first"