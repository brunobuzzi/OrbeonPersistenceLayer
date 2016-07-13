create saved definition
isCreationRejectedFor: currentDefinition withId: id inApp: appName form: formName

	^((self getOrbeonApplicationClass includesDefinitionNamed: formName in: appName) 
			and: [currentDefinition notNil 
				and:[(currentDefinition applicationName = appName) 
					and:[(currentDefinition formName = formName) 
						and: [currentDefinition id ~= id]]]])