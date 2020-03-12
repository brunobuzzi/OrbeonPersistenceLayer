attachment path
getPublishedDefinitionsPathFor: formName in: appName
	"The receiver answer the base path where attachment of form <formName> in application <appName> are stored"


	^(self getBasePathFor: formName in: appName), 'definitions/published/'