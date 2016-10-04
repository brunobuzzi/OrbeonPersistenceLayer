process xml
getQuantityDistributionForFieldNamed: fieldName from: start to: end
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| distributionValue |

	distributionValue := OrderPreservingDictionary new.

	(self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count |
		fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString].
		(fieldInst value notNil and: [(start <= fieldInst value) and: [fieldInst value <= end]])
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