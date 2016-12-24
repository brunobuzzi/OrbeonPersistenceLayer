published definition
getAllInstancesSize
	"Answer the number of instances in all versions"
	| count |

	count := 0.

	self getAllVersion do: [:each | count := count + each instances size]. "tricky value because includes deleted instances (deleted='Y')"

	^count