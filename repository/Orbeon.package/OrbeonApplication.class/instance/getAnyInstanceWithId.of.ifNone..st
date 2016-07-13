instance forms
getAnyInstanceWithId: stringId of: formName ifNone: aBlock
	"The receiver answer anOrbeonFormInstance with id <stringId> if none evaluates the block <aBlock>"

	^(self registryForFormNamed: formName ifNone: [^aBlock value]) getAnyInstanceWithId: stringId ifNone: aBlock