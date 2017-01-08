permissions
canBeDisplayedFor: user role: role latestDefinition: anOrbeonPublishedFormDefinition

	^deleted = 'N'
		and: [(self hasUser: user readAccessUsing: anOrbeonPublishedFormDefinition permissions) 
			or: [self hasRole: role readAccessUsing: anOrbeonPublishedFormDefinition permissions]
		]