published definition
getAnyFieldInstancesSize
	"Answer the number of instances in all versions"

	^self getAllVersion inject: 0 into:  [:sum :def | sum + (def fieldInstances at: def getFieldsNames first) size]