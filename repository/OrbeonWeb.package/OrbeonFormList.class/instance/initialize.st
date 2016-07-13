other
initialize

	super initialize.

	collection := OrderedCollection new.
	originalCollection := OrderedCollection new.
	searchFields := Dictionary new.
	orderMode := #asc.
	selectionTrack := Dictionary new.

	batchedList := SewafBatchedList parentComponent: self.

	batchedList batchSize: 10;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.