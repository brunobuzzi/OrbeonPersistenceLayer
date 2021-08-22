*orbeon
fromOrbeonString: aString
	"Create an instance of the receiver from Orbeon formated string date <aString>.
	Orbeon Persistence Layer use a fixed default format to store dates: ISO format: y-m-d"

	^self fromOrbeonString: aString format: 'y-m-d'.