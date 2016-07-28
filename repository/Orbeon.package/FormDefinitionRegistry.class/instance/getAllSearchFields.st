published definition
getAllSearchFields
	"The receiver answer a collection with all search fields of all versions"
	| searchFields |

	searchFields := Set new.

	self getAllVersion do: [:each | searchFields addAll: each searchFields].

	^searchFields