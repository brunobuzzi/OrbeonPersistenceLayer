other
<= aFormTabIndex

	(self getTopIndex < aFormTabIndex getTopIndex) ifTrue: [^true].
	(self getTopIndex > aFormTabIndex getTopIndex) ifTrue: [^false].

	^(self printTabIndex size = aFormTabIndex printTabIndex size)
			ifTrue: [self printTabIndex <= aFormTabIndex printTabIndex]
			ifFalse: [self printTabIndex size < aFormTabIndex printTabIndex size]