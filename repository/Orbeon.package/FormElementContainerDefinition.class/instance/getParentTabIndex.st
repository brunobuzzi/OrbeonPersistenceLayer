parent section
getParentTabIndex
	"Answer the <FormTabIndex> from the parent component"

	^self parentSection 
		ifNil: [nil]
		ifNotNil: [self parentSection tabIndex]