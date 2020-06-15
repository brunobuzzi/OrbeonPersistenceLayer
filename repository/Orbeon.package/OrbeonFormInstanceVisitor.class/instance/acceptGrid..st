other
acceptGrid: aFormGridInstance

	gridsDo value: aFormGridInstance section value: aFormGridInstance.

	aFormGridInstance gridIterationsDo: [:eachDictionary | fieldsDo value: aFormGridInstance section value: aFormGridInstance value: eachDictionary]