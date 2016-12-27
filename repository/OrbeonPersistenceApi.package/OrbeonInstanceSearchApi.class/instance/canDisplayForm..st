Accessing
canDisplayForm: anOrbeonFormInstance

	^anOrbeonFormInstance notNil 
		and: [
			anOrbeonFormInstance deleted = 'N'
				and: [(anOrbeonFormInstance hasUser: user readAccessUsing: lastFormDefinition permissions) 
					or: [anOrbeonFormInstance hasRole: group readAccessUsing: lastFormDefinition permissions]
				]
		]