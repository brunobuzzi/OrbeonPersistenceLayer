*orbeon
fromOrbeonString: aString dateFormat: stringFormat
	"Answer an instance of the receiver based on time stamp string <aString>.
	The supported TimeStamp format is: Date + Time. Where Date format is defined in Date fromOrbeonString:.
	Time part support p.m. or pm"
	| timeStampArray dateString timeString |

	aString isEmpty ifTrue: [^nil].
	timeStampArray := ((aString findString: 'T') = 0) ifTrue: [aString subStrings: ' '] ifFalse: [aString subStrings: 'T'].

	((timeStampArray size = 2) or: [timeStampArray size = 3]) 
	ifFalse: [OrbeonTimeStampMaskException signal: 'Incorrect time stamp format'].
	"size = 3 --> must includes pm or p.m. or am or a.m."
	(timeStampArray size = 3 and: [(timeStampArray third asUppercase findString: 'M') = 0])
	ifTrue:  [OrbeonTimeStampMaskException signal: 'Incorrect time stamp format'].

	dateString := timeStampArray first.
	timeString := timeStampArray second.
	(timeStampArray size = 3) ifTrue: [timeString := timeString, timeStampArray third].

	^self date: (Date fromOrbeonString: dateString format: stringFormat) time: (Time fromString: timeString)