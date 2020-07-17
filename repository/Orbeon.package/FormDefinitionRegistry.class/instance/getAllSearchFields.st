published definition
getAllSearchFields
	"The receiver answer a collection with all search fields of all versions"
	| searchFields |

	searchFields := Set new.

	self getAllVersions do: [:each | searchFields addAll: each searchFields].

	^searchFields