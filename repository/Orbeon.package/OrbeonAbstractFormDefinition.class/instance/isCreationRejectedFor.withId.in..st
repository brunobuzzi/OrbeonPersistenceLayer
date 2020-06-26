update restrictions
isCreationRejectedFor: fNamed withId: fId in: appName
	"The creation is rejected for the receiver when already exist a form definition named <fNamed> in application named <appName> but the <ids> are different.
	This case happend when a pair <appName,formName> is saved with different id. [IN THIS PERSISTENCE LAYER THIS IS FORBIDDEN BY CODE]"

	^(self getOrbeonApplicationClass includesDefinitionNamed: fNamed in: appName) 
			and:[(self applicationName = appName) 
			and:[(self formName = fNamed) 
			and: [self id ~= fId]]]