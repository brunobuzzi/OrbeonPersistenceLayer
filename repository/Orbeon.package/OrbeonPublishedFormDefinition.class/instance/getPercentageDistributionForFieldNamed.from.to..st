distribution
getPercentageDistributionForFieldNamed: fieldName from: start to: end
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| distributionValue distributionPercentage maxValue |

	distributionValue := OrderPreservingDictionary new.
	distributionPercentage := OrderPreservingDictionary new.
	maxValue := (self fieldInstancesOf: fieldName) size.

	(self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString].
		(fieldInst value notNil and: [(start <= fieldInst value) and: [fieldInst value <= end]])
		ifTrue: [
			(distributionValue includesKey: fieldValue) ifFalse: [distributionValue at: fieldValue put: 0].
			count := (distributionValue at: fieldValue) + 1.
			distributionValue at: fieldValue put: count.
			distributionPercentage at: fieldValue put: (count * 100 / maxValue)]
		ifFalse: [
			(distributionValue includesKey: 'other') ifFalse: [distributionValue at: 'other' put: 0].
			count := (distributionValue at: 'other') + 1.
			distributionValue at: 'other' put: count.
			distributionPercentage at: 'other' put: (count * 100 / maxValue)
		] 
	].

	^distributionPercentage