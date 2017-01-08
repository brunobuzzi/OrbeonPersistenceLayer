permissions
canBeDisplayedFor: user role: role

	^deleted = 'N'
		and: [(self hasUser: user readAccessUsing: definition getLatestDefinition permissions) 
			or: [self hasRole: role readAccessUsing: definition getLatestDefinition permissions]
		]