parent section
getTreeLevel
	"Answer the tree level of the receiver in the form tree structure"

	^self parentSection 
		ifNil: [1]
		ifNotNil: [self parentSection getTreeLevel + 1]