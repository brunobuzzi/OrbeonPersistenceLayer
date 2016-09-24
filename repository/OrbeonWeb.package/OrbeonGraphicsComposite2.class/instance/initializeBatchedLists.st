other
initializeBatchedLists

	formsBatchedList := SewafBatchedList parentComponent: self.
	formsBatchedList batchSize: 4;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.