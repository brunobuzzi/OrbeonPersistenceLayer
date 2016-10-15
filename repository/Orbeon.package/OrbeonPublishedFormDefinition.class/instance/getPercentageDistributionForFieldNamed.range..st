distribution with range
getPercentageDistributionForFieldNamed: fieldName range: range
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| distributionValue distributionPercentage maxValue startValue endValue |

	distributionValue := OrderPreservingDictionary new.
	distributionPercentage := OrderPreservingDictionary new.
	maxValue := (self fieldInstancesOf: fieldName) size.
	startValue := range first.
	endValue := range second.

	(self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString].
		(fieldInst value notNil and: [(startValue <= fieldInst value) and: [fieldInst value <= endValue]])
		ifTrue: [
			(distributionValue includesKey: fieldValue) ifFalse: [distributionValue at: fieldValue put: 0].
			count := (distributionValue at: fieldValue) + 1.
			distributionValue at: fieldValue put: count.
			distributionPercentage at: fieldValue put: (count * 100 / maxValue)]
	].

	^distributionPercentage