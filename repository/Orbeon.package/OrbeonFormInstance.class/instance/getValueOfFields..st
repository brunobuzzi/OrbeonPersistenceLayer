other
getValueOfFields: collectionOfFieldNames

	^collectionOfFieldNames collect: [:each | self fieldValueAt: each]