other
getTotalValue

	^rootDistribution 
		inject: 0 
		into:  [:sum :each | 
			(each isKindOf: Number) 
			ifTrue: [each + sum] 
			ifFalse: [(each isKindOf: Collection) ifTrue: [sum + (each inject: 0 into: [:innerSum :subEach | innerSum + subEach] )] ] 
		]