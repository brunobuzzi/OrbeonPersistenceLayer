other
acceptGrid: aFormGridInstance

	gridsDo value: aFormGridInstance section value: aFormGridInstance.

	aFormGridInstance gridIterations do: [:eachDictionary | fieldsDo value: aFormGridInstance section value: aFormGridInstance value: eachDictionary]