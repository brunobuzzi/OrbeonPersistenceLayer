instance forms
getAnyInstanceWithId: stringId of: formName
	"The receiver answer anOrbeonFormInstance with id <stringId> if none evaluates the block <aBlock>"

	^self getAnyInstanceWithId: stringId of: formName ifNone: [nil]