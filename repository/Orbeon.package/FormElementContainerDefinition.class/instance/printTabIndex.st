parent section
printTabIndex

	^self getParentTabIndex 
		ifNil: [tabIndex printIndex] 
		ifNotNil: ['.', self parentSection printTabIndex, '.s', tabIndex printIndex ]