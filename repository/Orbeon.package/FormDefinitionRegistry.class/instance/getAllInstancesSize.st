published definition
getAllInstancesSize
	"Answer the number of instances in all versions"

	^self getAllVersion inject: 0 into:  [:sum :def | sum + def instances size]