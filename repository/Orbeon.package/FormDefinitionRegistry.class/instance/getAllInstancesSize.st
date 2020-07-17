published definition
getAllInstancesSize
	"Answer the number of instances in all versions"

	^self getAllVersions inject: 0 into:  [:sum :def | sum + def instancesSize]