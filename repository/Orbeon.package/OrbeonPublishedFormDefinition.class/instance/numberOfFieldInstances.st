field instances
numberOfFieldInstances

	^fieldInstances inject: 0 into: [:sum :each | sum + each size]