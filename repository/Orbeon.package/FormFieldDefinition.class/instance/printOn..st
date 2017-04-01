other
printOn: aStream


	aStream nextPutAll: self asString, '[', name, ' t:', self printTabIndex, ']'