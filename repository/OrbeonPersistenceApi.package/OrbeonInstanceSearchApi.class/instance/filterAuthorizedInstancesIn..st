other
filterAuthorizedInstancesIn: anOrderedCollection
	"The receiver filter the form instances in <anOrderedCollection>. 
	Each instance in <anOrderedCollection> is checked if it has read authotization for user <username> or group <group> using the permissions defined in <anOrbeonFormDefinition>"

	^resultCollection := (anOrderedCollection select: [:each | 
														each deleted = 'N' and: 
															[(each hasUser: user readAccessUsing: lastFormDefinition permissions) 
																or: [each hasRole: group readAccessUsing: lastFormDefinition permissions]]])