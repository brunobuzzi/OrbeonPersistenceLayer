other
testDoItAllFormsFalse
	| application stApplication formDefinition xmlResultString stringTS |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	stApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st'.

	apiOperation appName: 'agesic';
		formName: 'test-all-types-4';
		allversions: 'false'.

	formDefinition := self createFormStructureCreatePermissions.
	stringTS := formDefinition modifiedTime asOrbeonDateTimeString.

	apiOperation allforms: 'false'.
	apiOperation group: 'ungranted-role'.
	xmlResultString := apiOperation doIt.
	self assert: xmlResultString equals: '<forms/>'.