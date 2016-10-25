distribution by fields
getValueDistributionForFieldName: fieldName secondaryFields: fieldNamesCollection
	""
	| distribution secondaryDistribution |
 
	distribution := OrderPreservingDictionary new.
	secondaryDistribution := OrderPreservingDictionary new.

	(self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count secondaryValue secondaryCount |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString] . 
		(distribution includesKey: fieldValue) ifFalse: [distribution at: fieldValue put: 0].
		count := (distribution at: fieldValue) + 1.
		distribution at: fieldValue put: count.
		secondaryValue := fieldInst parentObject fieldValueAt: fieldNamesCollection.
		(secondaryDistribution includesKey: secondaryValue) ifFalse: [secondaryDistribution at: secondaryValue put: 0].
		secondaryCount := (secondaryDistribution at: secondaryValue) + 1.
		secondaryDistribution at: secondaryValue put: secondaryCount.
	].

	^Array with: distribution with: secondaryDistribution