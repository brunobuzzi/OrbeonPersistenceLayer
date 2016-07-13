form-field-value
updateFrom: dbArray
	"The receiver update it's self using an update row <dbArray> of the database "

	createdTime := TimeStamp fromOrbeonString: dbArray first trimLeadingSeparators.
	modifiedTime := TimeStamp fromOrbeonString: dbArray second trimLeadingSeparators.
	modifiedUser := dbArray third.
	id := dbArray at: 6.
	deleted := dbArray at: 7.
	xmlString :=  dbArray at: 8.
	username :=  dbArray at: 9.
	groupname :=  dbArray at: 10.
	version := Integer fromString: (dbArray at: 11).
	^self