other
sortBlockForInstances: value
	
	^[:a : b | | valueA valueB |
		valueA := a valueAt: value.
		valueB := b valueAt: value.
		(valueA notNil and: [valueB notNil]) 
		ifTrue: [valueA <= valueB] 
		ifFalse:[valueA notNil ]
		]