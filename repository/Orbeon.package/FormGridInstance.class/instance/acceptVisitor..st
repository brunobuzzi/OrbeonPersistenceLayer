other
acceptVisitor: aVisitor

	gridIterations do: [:eachDictionary | aVisitor acceptGridFields: eachDictionary]