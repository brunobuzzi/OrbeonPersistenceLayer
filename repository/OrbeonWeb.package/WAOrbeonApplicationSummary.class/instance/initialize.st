other
initialize

	super initialize.

	innerBatchList := SewafBatchedList parentComponent: self.
	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: 10;
		navigationCssClass: 'batch-div-lateral-top'.

	lateralCollection := self applicationsForCurrentUser.

	innerBatchList := SewafBatchedList parentComponent: self.

	innerBatchList batchSize: 4;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	self setClassSide