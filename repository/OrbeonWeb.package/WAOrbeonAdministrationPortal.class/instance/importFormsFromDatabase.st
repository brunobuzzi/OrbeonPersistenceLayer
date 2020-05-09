other
importFormsFromDatabase

	^(arena class == WAOrbeonImportFromDatabaseComposite) 
	ifTrue: [arena]
	ifFalse: [WAOrbeonImportFromDatabaseComposite parent: self]