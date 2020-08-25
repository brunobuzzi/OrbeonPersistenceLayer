other
testDoIt
	| application formDefinition xmlResultString stringTS |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	xmlResultString := apiOperation doIt.

	self assert: xmlResultString equals: '<form/>'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition createdTime asOrbeonDateTimeString.

	xmlResultString := apiOperation doIt.

	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.