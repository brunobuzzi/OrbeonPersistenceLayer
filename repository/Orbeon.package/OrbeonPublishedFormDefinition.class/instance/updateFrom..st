other
updateFrom: dbArray
	"The receiver update it's self using an update row <dbArray> of the database "

	createdTime := TimeStamp fromOrbeonString: dbArray first trimLeadingSeparators.
	modifiedTime := TimeStamp fromOrbeonString: dbArray second trimLeadingSeparators.
	modifiedUser := dbArray third.
	deleted := dbArray at: 6.
	version := Integer fromString: (dbArray at: 7).
	xmlString := dbArray at: 8.

	^self