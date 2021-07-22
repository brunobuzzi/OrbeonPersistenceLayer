other
testDoItAllVersionsTrue
	| application formDefinition xmlResultString stringTS stringTS2 |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	formDefinition := self createFormStructureV2: formDefinition id.
	stringTS2 := formDefinition modifiedTime asOrbeonDateTimeString.

	apiOperation allversions: 'true';
					allforms: 'true';
					group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>', stringTS,'</last-modified-time><form-version>1</form-version></form><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS2,'</last-modified-time><form-version>2</form-version></form></forms>'.

	apiOperation allversions: 'true';
					allforms: 'false';
					group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms/>'.

	apiOperation allversions: 'true';
					allforms: 'true';
					group: 'orbeon-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>', stringTS,'</last-modified-time><form-version>1</form-version></form><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS2,'</last-modified-time><form-version>2</form-version></form></forms>'.

	apiOperation allversions: 'true';
					allforms: 'true';
					group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>', stringTS,'</last-modified-time><form-version>1</form-version></form><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS2,'</last-modified-time><form-version>2</form-version></form></forms>'.