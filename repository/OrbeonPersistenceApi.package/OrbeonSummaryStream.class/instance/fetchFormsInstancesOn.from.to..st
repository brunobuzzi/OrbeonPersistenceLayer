fetch
fetchFormsInstancesOn: instances from: startIndex to: endIndex

	instances ifEmpty: [^self].

	instances _hasIndexes
	ifTrue: [self fetchIndexedFormsInstancesOn: instances from: startIndex to: endIndex] 
	ifFalse: [self fetchUnIndexedFormsInstancesOn: instances from: startIndex to: endIndex]