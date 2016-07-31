other
printTabIndex

	^self getParentTabIndex 
		ifNil: [tabIndex printIndex] 
		ifNotNil: ['.', parentSection printTabIndex, '.s', tabIndex printIndex ]