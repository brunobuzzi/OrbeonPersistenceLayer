other
testDoItAllForms
	| application formDefinition xmlResultString stringTS |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	apiOperation appName: 'st';
		formName: 'simple-registration';
		allversions: 'false'.

	formDefinition := self createFormStructureNoPermissions.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	apiOperation allforms: 'false'.
	apiOperation group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms/>'.

	apiOperation allforms: 'true'.
	apiOperation group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms><form operations="*"><application-name>st</application-name><form-name>simple-registration</form-name><title>Test</title><description/><last-modified-time>',stringTS,'</last-modified-time><form-version>1</form-version></form></forms>'.