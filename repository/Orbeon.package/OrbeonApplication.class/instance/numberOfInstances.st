other
numberOfInstances
	"Answer the number of instances of all form definitions combined"

	^self getAllDefinitions inject: 0 into: [:sum :each | sum + each numberOfInstances]