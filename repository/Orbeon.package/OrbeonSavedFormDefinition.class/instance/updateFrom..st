other
updateFrom: dbArray
	"The receiver update it's self using an update row <dbArray> of the database "

	createdTime := TimeStamp fromOrbeonString: dbArray first.
	modifiedTime := TimeStamp fromOrbeonString: dbArray second.
	id := dbArray third.
	modifiedUser := dbArray fourth notEmpty ifTrue:[dbArray fourth allButFirst] ifFalse: [''].
	username := dbArray fifth notEmpty ifTrue:[dbArray fifth allButFirst] ifFalse: [''].
	groupname := (dbArray at: 6) notEmpty ifTrue:[(dbArray at: 6) allButFirst] ifFalse: [''].
	version := Integer fromString: (dbArray at: 7).
	xmlString := dbArray at: 8.
	
	self setXmlString: ((dbArray at: 8) copyReplaceAll: '\n' with: Character lf). "-\n- is inserted by Bash "

	^self