*orbeon
fromOrbeonString: aString format: stringFormat
	"Create an instance of the receiver from Orbeon formated string date <aString>.
	The Orbeon <oxf.xforms.format.input.date> configuration in XML file properties-loca.xml MUST be equal to: 
	self getOrbeonWebServerConfiguration dateFormat"
	| dateFormat dateSeparator dateArray dictIndex sortedIndex dayValue monthValue yearValue pivotKey convertedString |

	convertedString := (aString includes: $:) ifFalse: [aString] ifTrue: [aString allButLast: 6]. "issue #198 (timezone included in date)"
	dateFormat := stringFormat asUppercase.
	dateSeparator := ((dateFormat findString: '/') = 0)
		ifFalse: ['/']
		ifTrue: [((dateFormat findString: '-') = 0)
				ifFalse:['-'] 
				ifTrue: [((dateFormat findString: '.') = 0)
						ifFalse: ['.']
						ifTrue: [OrbeonDateMaskException signal: 'Not supported mask date separator exeception. It must be (/) or (-) or (.)']]].
	dateArray := convertedString subStrings: dateSeparator.
	(((convertedString findString: dateSeparator) = 0) or:[dateArray size ~= 3]) ifTrue: [OrbeonDateMaskException signal: 'Incorrect date format'].
	dictIndex := Dictionary new.
	dictIndex at: 'd' put: (dateFormat findString: 'D'). 
	dictIndex at: 'm' put: (dateFormat findString: 'M').
	dictIndex at: 'y' put: (dateFormat findString: 'Y').
	(dictIndex anySatisfy: [:each | each = 0]) ifTrue: [OrbeonDateMaskException signal: 'Bad date format configuration'].

	sortedIndex := dictIndex asSortedCollection.
	
	pivotKey := dictIndex keyAtValue: (sortedIndex  at: 1).
	dictIndex at: pivotKey put: 1.
	pivotKey := dictIndex keyAtValue: (sortedIndex  at: 2).
	dictIndex at: pivotKey put: 2.
	pivotKey := dictIndex keyAtValue: (sortedIndex  at: 3).
	dictIndex at: pivotKey put: 3.
	dayValue := dateArray at: (dictIndex at: 'd').
	monthValue := dateArray at: (dictIndex at: 'm').
	yearValue := dateArray at: (dictIndex at: 'y').

	^self 
		year: (Integer fromString: yearValue)
		month: (Integer fromString: monthValue)
		day: (Integer fromString: dayValue)