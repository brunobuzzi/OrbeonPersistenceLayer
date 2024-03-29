other
testDoItAllVersionsFalseExcludeLibrary
	| application formDefinition xmlResultString stringTS library libraryTS |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	library := testRoot buildPublishedFormNamed: 'library' title: 'Library' withXml: testRoot newDefinitionTemplate formDefinition_agesic_library in: application.
	libraryTS := library modifiedTime asOrbeonDateTimeString.

	apiOperation allversions: 'false';
		allforms: 'false';
		group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms/>'.

	apiOperation 
		formName: nil;
		allversions: 'true';
		allforms: 'true'; "includes Library forms"
		group: 'orbeon-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>agesic</application-name><form-name>library</form-name><title>Library</title><description/><last-modified-time>',libraryTS,'</last-modified-time><form-version>1</form-version></form><form operations="*"><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.

	apiOperation 
		formName: nil;
		allversions: 'true';
		allforms: 'false'; "exclude Library forms"
		group: 'orbeon-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="create delete read "><application-name>agesic</application-name><form-name>test-all-types-4</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.