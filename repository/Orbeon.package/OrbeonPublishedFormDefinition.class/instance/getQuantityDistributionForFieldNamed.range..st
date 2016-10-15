distribution with range
getQuantityDistributionForFieldNamed: fieldName range: range
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole.
	Where the values of the fields are in the range <range>.
	Note: range value must be compatible with fields values "
	| distributionValue startValue endValue |

	distributionValue := OrderPreservingDictionary new.
	startValue := range first.
	endValue := range second.

	(self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString].
		(fieldInst value notNil and: [(startValue <= fieldInst value) and: [fieldInst value <= endValue]])
		ifTrue: [
			(distributionValue includesKey: fieldValue) ifFalse: [distributionValue at: fieldValue put: 0].
			count := (distributionValue at: fieldValue) + 1.
			distributionValue at: fieldValue put: count]
		ifFalse: [
			(distributionValue includesKey: 'other') ifFalse: [distributionValue at: 'other' put: 0].
			count := (distributionValue at: 'other') + 1.
			distributionValue at: 'other' put: count.
		] 
	].

	^distributionValue