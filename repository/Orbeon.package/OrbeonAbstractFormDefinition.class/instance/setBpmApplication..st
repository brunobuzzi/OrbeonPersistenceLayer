other
setBpmApplication: appName
	"The receiver set it's application with anOrbeonApplication named <appName>.
	Get the application from the cache or create a new one"

	application := self systemRoot getExistingBpmApplicationOrCreateNewNamed: appName.