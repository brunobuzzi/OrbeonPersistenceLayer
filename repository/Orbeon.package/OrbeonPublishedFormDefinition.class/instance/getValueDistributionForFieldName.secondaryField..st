distribution by fields
getValueDistributionForFieldName: fieldName secondaryField: secondaryField
	"The receiver answer anArray with two Dictionaries <OrderPreservingDictionary> with receiver's field instances value distribution.
	The first dictionary is the main distribution for the field named <fieldName>.
	The second dictionary is the second distribution for the field named <secondaryField>."
	| distribution orderedDistribution secondaryDistribution orderedsecondaryDistribution |
 
	distribution := Dictionary new.
	secondaryDistribution := Dictionary new.
	orderedsecondaryDistribution := OrderPreservingDictionary new.
	orderedDistribution := OrderPreservingDictionary new.

	(self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count secondaryKey secondaryValue secondaryCount |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString] . 
		(distribution includesKey: fieldValue) ifFalse: [distribution at: fieldValue put: 0].
		count := (distribution at: fieldValue) + 1.
		distribution at: fieldValue put: count. "main distribution"

		secondaryValue := fieldInst parentObject fieldValueAt: secondaryField.
		secondaryKey := fieldValue, '.', secondaryValue.
		(secondaryDistribution includesKey: secondaryKey) ifFalse: [secondaryDistribution at: secondaryKey put: 0].
		secondaryCount := (secondaryDistribution at: secondaryKey) + 1.
		secondaryDistribution at: secondaryKey put: secondaryCount. "secondary distribution"
	].

	distribution keys asSortedCollection do: [:key| orderedDistribution at: key put: (distribution at: key)].
	secondaryDistribution keys asSortedCollection do: [:key| orderedsecondaryDistribution at: key put: (secondaryDistribution at: key)].

	^Array with: orderedDistribution with: orderedsecondaryDistribution