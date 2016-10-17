other
getTotalValue

	^rootDistribution inject: 0 into:  [:sum :each | sum + each]