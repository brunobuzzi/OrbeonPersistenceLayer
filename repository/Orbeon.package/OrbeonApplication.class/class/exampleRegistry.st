other
exampleRegistry
	| form app reg |

	app := self getOrbeonApplicationClass applicationNamed: 'asse'.
	reg := app registryForFormNamed: 'relevamiento_prestaciones_2015'.
	form := reg getLastVersion.

	^(SinglelineSimpleFormExport definition: form formsCollection: form instances) generatePrintArray.