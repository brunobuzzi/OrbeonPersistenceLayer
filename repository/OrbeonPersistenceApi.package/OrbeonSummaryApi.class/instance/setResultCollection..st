other
setResultCollection: anOrderedCollection

	resultCollection := anOrderedCollection asSortedCollection: [:a :b | a modifiedTime >= b modifiedTime].

	^resultCollection