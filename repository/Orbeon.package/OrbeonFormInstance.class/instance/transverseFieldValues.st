transverse
transverseFieldValues
	"The receiver iterate over field values and answer <aCollection> of Collections with transversed values.
	Field values hold <aCollection> with all values for a field. 
	Transversed values hold <aCollection> per section iteration.
	NOTE: It works with repeatable Section with simple filelds BUT it does NOT work for forms with repeatable fields or grids"
	| transversedFields |

	transversedFields := OrderedCollection new.

	self fieldValuesDo: [:valueHolder | 
		valueHolder currentValues keysAndValuesDo: [:index :fieldValue | | section |
			section := (transversedFields size < index) ifTrue: [transversedFields add: Dictionary new] ifFalse: [transversedFields at: index].
			section at: fieldValue name put: fieldValue.
		].
	].

	^transversedFields