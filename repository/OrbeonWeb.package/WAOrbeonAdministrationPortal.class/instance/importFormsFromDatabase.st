other
importFormsFromDatabase

	^(arena class == OrbeonImportFromDatabaseComposite) 
	ifTrue: [arena]
	ifFalse: [OrbeonImportFromDatabaseComposite parent: self]