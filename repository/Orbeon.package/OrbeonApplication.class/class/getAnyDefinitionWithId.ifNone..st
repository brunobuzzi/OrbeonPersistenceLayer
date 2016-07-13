published forms
getAnyDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer any form definition with id <stringId> if none evaluate the block <aBlock>.
	1- Search in all Published Forms.
	2- If there is no published form search in saved forms"

	^self getDefinitionWithId: stringId ifNone: [self getSavedDefinitionWithId: stringId ifNone: aBlock]