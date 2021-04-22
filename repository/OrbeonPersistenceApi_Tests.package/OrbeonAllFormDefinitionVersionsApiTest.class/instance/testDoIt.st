other
testDoIt
	| application formDefinition xmlResultString stringTS |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	xmlResultString := apiOperation doIt.

	self assert: xmlResultString equals: '<form/>'.

	formDefinition := self createFormStructure.

	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	xmlResultString := apiOperation doIt.

	self assert: xmlResultString equals: '<forms/>'.