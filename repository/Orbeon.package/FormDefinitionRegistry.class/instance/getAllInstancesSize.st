published definition
getAllInstancesSize
	"Answer the number of instances in all versions"
	| count |

	count := 0.

	self getAllVersion do: [:each | count := count + each instances size].

	^count