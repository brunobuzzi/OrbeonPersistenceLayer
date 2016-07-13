other
getCollectionToExport
	| toExport |

	toExport := OrderedCollection new.
	self selectedObjects do: [:each | toExport addAll: each instances asOrderedCollection].

	^toExport