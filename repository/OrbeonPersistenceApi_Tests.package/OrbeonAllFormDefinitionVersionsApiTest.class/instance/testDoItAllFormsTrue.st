other
testDoItAllFormsTrue
	| application stApplication formDefinition xmlResultString stringTS |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	stApplication := testRoot getExistingApplicationOrCreateNewNamed: 'st'.

	apiOperation appName: 'agesic';
		formName: 'test-all-types-4';
		allversions: 'false'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	apiOperation allforms: 'true'.
	apiOperation group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.