*orbeon
printOrbeonStringFormat: stringFormat
	"Create an instance of the receiver from Orbeon formated string date <aString>.
	The Orbeon <oxf.xforms.format.input.date> configuration in XML file properties-loca.xml MUST be equal to: 
	self getOrbeonWebServerConfiguration dateFormat"
	| dateFormat dateSeparator dictIndex sortedIndex printStream |

	dateFormat := stringFormat asUppercase.
	dateSeparator := ((dateFormat findString: '/') = 0)
		ifFalse: ['/']
		ifTrue: [((dateFormat findString: '-') = 0)
				ifFalse:['-'] 
				ifTrue: [((dateFormat findString: '.') = 0)
						ifFalse: ['.']
						ifTrue: [OrbeonDateMaskException signal: 'Not supported mask date separator exeception. It must be (/) or (-) or (.)']]].

	dictIndex := Dictionary new.
	dictIndex at: 'day' put: (dateFormat findString: 'D'). 
	dictIndex at: 'month' put: (dateFormat findString: 'M').
	dictIndex at: 'year' put: (dateFormat findString: 'Y').
	(dictIndex anySatisfy: [:each | each = 0]) ifTrue: [OrbeonDateMaskException signal: 'Bad date format configuration'].

	sortedIndex := dictIndex asSortedCollection.

	printStream := PrintStream on: String new.

	printStream nextPutAll: (self perform: (dictIndex keyAtValue: (sortedIndex at: 1))) printString.
	printStream nextPutAll: dateSeparator.
	printStream nextPutAll: (self perform: (dictIndex keyAtValue: (sortedIndex at: 2))) printString.
	printStream nextPutAll: dateSeparator.
	printStream nextPutAll: (self perform: (dictIndex keyAtValue: (sortedIndex at: 3))) printString.
	
	^printStream contents