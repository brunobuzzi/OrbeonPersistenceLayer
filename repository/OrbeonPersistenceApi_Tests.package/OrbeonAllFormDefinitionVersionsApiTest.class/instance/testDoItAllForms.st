other
testDoItAllForms
	| application formDefinition xmlResultString stringTS |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="create "><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.

	apiOperation group: 'orbeon-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="create delete read "><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.
	self assert: false