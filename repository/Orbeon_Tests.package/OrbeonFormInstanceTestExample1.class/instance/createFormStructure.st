other
createFormStructure
	| app |

	app := OrbeonApplication applicationNamed: 'agesic'.
	
	^OrbeonSavedFormDefinition createDefinition: 'test' with: #form_test in: app title: 'Test' xPathVersion: self getOrbeonXmlXpathUpto2017_1