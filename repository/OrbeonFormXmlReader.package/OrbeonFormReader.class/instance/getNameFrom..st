orbeon fields
getNameFrom: xmlNode
	| fieldName |

	fieldName := xmlNode attributeAt: 'id'.
	(fieldName size <= 8) ifTrue: [^OrbeonControlSizeException signal: 'No "-control" word found in field''s name'].
	fieldName := fieldName allButLast: 8. "remove <-control> word from original id"
	^fieldName