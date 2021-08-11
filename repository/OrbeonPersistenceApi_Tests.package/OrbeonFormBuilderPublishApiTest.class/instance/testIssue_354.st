other
testIssue_354
	"The availabilty of a Form is only stored on the <OrbeonPublishedFormDefinition>, the <OrbeonSavedFormDefinition> is NOT modified when a form is made available or unavailable
	Check:
	https://discuss.orbeon.com/Upgrading-form-definitions-from-Home-page-td4665741.html
	"
	| newPublishedSameVersion |

	apiOperation headerVersion: 'next'.
	apiOperation doItIfNotFound: [self assert: false].
	newPublishedSameVersion := testRoot formDefinitionNamed: apiOperation formName in: apiOperation appName.
	self assert: newPublishedSameVersion == newPublishedSameVersion definition definition.
	self assert: newPublishedSameVersion definition == newPublishedSameVersion definition definition definition.

	apiOperation headerVersion: '1'.
	apiOperation doItIfNotFound: [self assert: false].
	newPublishedSameVersion := testRoot formDefinitionNamed: apiOperation formName in: apiOperation appName.
	self assert: newPublishedSameVersion == newPublishedSameVersion definition definition.
	self assert: newPublishedSameVersion definition == newPublishedSameVersion definition definition definition.