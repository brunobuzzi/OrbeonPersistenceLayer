chart scope
newChartScopeFor: aBIChartDefinition

	^(BIChartScope subclasses detect: [:each | each scopeName = (self searchValueAt: 'scope')] ifNone: [^nil]) newOn: aBIChartDefinition