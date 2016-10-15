distribution by fields
getQuantityDistributionForFieldCollection: fieldInstancesCollection
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| distribution fieldName |
 
	distribution := OrderPreservingDictionary new.
	fieldInstancesCollection ifEmpty: [^distribution].
	fieldName := fieldInstancesCollection first name.

	fieldInstancesCollection do: [:fieldInst |  | fieldValue count |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString] . 
		(distribution includesKey: fieldValue) ifFalse: [distribution at: fieldValue put: 0].
		count := (distribution at: fieldValue) + 1.
		distribution at: fieldValue put: count.
	].

	^distribution