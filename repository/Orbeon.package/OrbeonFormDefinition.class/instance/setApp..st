other
setApp: appName
	"The receiver it's application with anOrbeonApplication named <aString>.
	Get the application from the cache or create a new one"

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: app.