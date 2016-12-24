Accessing
deletedInstances

	deletedInstances ifNil: [deletedInstances := RcKeyValueDictionary new]. 
	
	^deletedInstances