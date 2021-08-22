*orbeon
fromOrbeonString: aString
	"Answer an instance of the receiver based on time stamp string <aString>.
	The supported TimeStamp format is: Date + Time. Where Date format is defined in Date fromOrbeonString:.
	Time part support p.m. or pm"

	^self fromOrbeonString: aString dateFormat: 'y-m-d'