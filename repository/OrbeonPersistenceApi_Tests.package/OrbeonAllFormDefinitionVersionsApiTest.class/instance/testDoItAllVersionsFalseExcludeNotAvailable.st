other
testDoItAllVersionsFalseExcludeNotAvailable
	| application formDefinition xmlResultString stringTS  |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	apiOperation allversions: 'false';
		allforms: 'false';
		group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms/>'.

	apiOperation 
		formName: nil;
		allversions: 'true';
		allforms: 'false'; "exclude unavailable forms"
		group: 'orbeon-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="create delete read "><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.

	formDefinition isAvailable: false.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms/>'.

	formDefinition isAvailable: true.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="create delete read "><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.