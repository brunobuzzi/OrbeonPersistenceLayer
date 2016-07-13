Accessing
canDisplayForm: anOrbeonFormInstance

	^anOrbeonFormInstance deleted = 'N'
		and: [(anOrbeonFormInstance hasUser: user readAccessUsing: lastFormDefinition permissions) 
						or: [anOrbeonFormInstance hasRole: group readAccessUsing: lastFormDefinition permissions]]