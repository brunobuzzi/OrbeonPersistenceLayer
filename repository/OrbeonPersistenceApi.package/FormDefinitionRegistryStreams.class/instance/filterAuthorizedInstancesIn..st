permissions
filterAuthorizedInstancesIn: anOrderedCollection
	"The receiver filter the form instances in <anOrderedCollection>. 
	Each instance in <anOrderedCollection> is checked if it has read authotization for user <username> or group <group> using the permissions defined in <anOrbeonFormDefinition>"

	^fieldsReadStreams := ReadStreamPortable on: (anOrderedCollection select: [:each | 
																										each deleted = 'N' and: 
																											[(each hasUser: user readAccessUsing: permissions) 	or: 
																												[each hasRole: group readAccessUsing: permissions]]])