other
getValueOfFields: collectionOfFieldNames

	^collectionOfFieldNames collect: [:each | self valueAt: each]