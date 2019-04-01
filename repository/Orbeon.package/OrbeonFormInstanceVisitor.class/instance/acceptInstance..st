other
acceptInstance: aFormGridInstance

	aFormGridInstance gridIterations do: [:eachDictionary | self acceptGridFields: eachDictionary]