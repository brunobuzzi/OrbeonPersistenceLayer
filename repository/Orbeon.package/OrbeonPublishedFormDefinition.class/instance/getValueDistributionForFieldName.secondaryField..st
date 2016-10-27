distribution by fields
getValueDistributionForFieldName: fieldName secondaryField: secondaryField
     "The receiver answer anArray with two Dictionaries <OrderPreservingDictionary> with receiver's field instances value distribution.
     The first dictionary is the main distribution for the field named <fieldName>.
     The second dictionary is the second distribution for the field named <secondaryField>."
     | distribution orderedDistribution secondaryDistribution orderedSecondaryDistribution mainGroupedDictionary |

     distribution := Dictionary new.
     secondaryDistribution := Dictionary new.
     orderedSecondaryDistribution := OrderPreservingDictionary new.
     orderedDistribution := OrderPreservingDictionary new.

     (self fieldInstancesOf: fieldName) do: [:fieldInst |  | fieldValue count secondaryKey secondaryValue secondaryCount |
         fieldValue := (fieldInst value class = String) ifTrue:[fieldInst value] ifFalse: [fieldInst value printString].
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

    mainGroupedDictionary := secondaryDistribution keys asSortedCollection groupBy: [:each | (each subStrings: '.') first] having: [:e | true].

    mainGroupedDictionary keys asSortedCollection do: [:key | | keyCollection groupedDictionary |
        keyCollection := mainGroupedDictionary at: key.
         groupedDictionary := Dictionary new.
         keyCollection do: [:eachKey | groupedDictionary at: eachKey put: (secondaryDistribution at: eachKey).
         (groupedDictionary associations asSortedCollection: [:a :b | a value >= b value]) do: [:eachAssoc |
            orderedSecondaryDistribution at: eachAssoc key put: eachAssoc value].
         ].
     ] .

     ^Array with: orderedDistribution with: orderedSecondaryDistribution