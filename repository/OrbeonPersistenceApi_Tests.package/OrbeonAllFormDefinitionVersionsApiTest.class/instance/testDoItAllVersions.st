other
testDoItAllVersions
	| application formDefinition xmlResultString stringTS stringTS2 |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	xmlResultString := apiOperation doIt.

	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.

	formDefinition := self createFormStructureV2: formDefinition id.
	stringTS2 := formDefinition modifiedTime asOrbeonDateTimeString.

	apiOperation allversions: 'true'. 
	xmlResultString := apiOperation doIt.

	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>', stringTS,'</last-modified-time><form-version>1</form-version></form><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS2,'</last-modified-time><form-version>2</form-version></form></forms>'.