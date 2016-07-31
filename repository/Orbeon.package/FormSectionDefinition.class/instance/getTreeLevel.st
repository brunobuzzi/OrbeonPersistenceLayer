other
getTreeLevel
	"Answer the tree level of the receiver in the form tree structure"

	^parentSection 
		ifNil: [1]
		ifNotNil: [parentSection getTreeLevel + 1]