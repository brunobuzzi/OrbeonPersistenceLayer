other
removeChart

	(self componentValueAt: 'removeChart') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self getOrbeonApplicationClass removeChart: selectedLateralItem.

	lateralCollection remove: selectedLateralItem ifAbsent: [].

	selectedLateralItem := nil.

	self removeValueNamed: 'removeChart'