other
acceptGrid: aFormGridInstance

	gridsDo value: aFormGridInstance.

	aFormGridInstance gridIterations do: [:eachDictionary | fieldsDo value: eachDictionary]