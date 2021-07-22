other
removeChart

	(self componentValueAt: 'removeChart') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session systemRoot removeChart: selectedLateralItem.

	lateralCollection remove: selectedLateralItem ifAbsent: [].

	selectedLateralItem := nil.

	self removeValueNamed: 'removeChart'