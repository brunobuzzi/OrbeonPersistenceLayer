db import
getFormWithId: documentId
	"Answer the last stored version of the form with id <documentId>"

	^self execute: (sqlReader sqlGetFormWithId: documentId)