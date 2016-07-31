other
getParentTabIndex
	"Answer the <FormTabIndex> from the parent component"

	^parentSection 
		ifNil: [nil]
		ifNotNil: [parentSection tabIndex]