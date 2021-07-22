other
testDoIt
	| latestSavedDefinition application currentSize |

	apiOperation doIt.
 
	latestSavedDefinition := testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	apiOperation id: latestSavedDefinition id.

	application := latestSavedDefinition application.
	currentSize := application getSaveDefinitionsSizeFor: apiOperation formName.

	apiOperation doIt.

	self assert: (currentSize + 1) equals: (application getSaveDefinitionsSizeFor: apiOperation formName).

	self deny: (latestSavedDefinition == (testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil])).