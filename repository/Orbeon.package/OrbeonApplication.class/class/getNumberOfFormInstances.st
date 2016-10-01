other
getNumberOfFormInstances

	^(self cache select: [:each | each class == self]) inject: 0 into:  [:sum :each | sum + each getNumberOfInstances]