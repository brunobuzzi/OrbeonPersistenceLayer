published definition
getAllInstancesSizeOf: version
	"Answer the number of instances in all versions"

	^(self getAllVersion: version) inject: 0 into:  [:sum :def | sum + def instances size]