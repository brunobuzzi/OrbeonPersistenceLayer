distribution by fields
getValueDistributionForFieldName2: fieldName secondaryField: secondaryField
     "The receiver answer anArray with two Dictionaries <OrderPreservingDictionary> with receiver's field instances value distribution.
     The first dictionary is the main distribution for the field named <fieldName>.
     The second dictionary is the second distribution for the field named <secondaryField>."
     | distribution secondaryDistribution  |

     distribution := Dictionary new.
     secondaryDistribution := Dictionary new.

     (self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count secondaryValue secondaryCount subValueDictionary |
        fieldValue := (fieldInst value class = String) ifTrue:[fieldInst value] ifFalse: [fieldInst value printString].
        (distribution includesKey: fieldValue) ifFalse: [distribution at: fieldValue put: 0].
        count := (distribution at: fieldValue) + 1.
        distribution at: fieldValue put: count. "main distribution"

        secondaryValue := fieldInst parentObject fieldValueAt: secondaryField.

        (secondaryDistribution includesKey: fieldValue) ifFalse: [secondaryDistribution at: fieldValue put: Dictionary new].
		subValueDictionary := secondaryDistribution at: fieldValue.
        secondaryCount := (subValueDictionary at: secondaryValue ifAbsent: [0]) + 1.
		subValueDictionary at: secondaryValue put: secondaryCount.
     ].

     ^Array with: distribution with: secondaryDistribution