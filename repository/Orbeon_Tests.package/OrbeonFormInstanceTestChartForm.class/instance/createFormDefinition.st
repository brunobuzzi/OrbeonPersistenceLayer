other
createFormDefinition
	| app |

	app := OrbeonApplication applicationNamed: 'charts'.
	
	^OrbeonSavedFormDefinition createDefinition: 'charts-forms' with: #formDefinition_chartForm in: app title: 'Charts Forms' xPathVersion: self getOrbeonXmlXpathFrom2017_2