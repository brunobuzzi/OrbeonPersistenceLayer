lease
secondsToExpire
	"The receiver answer the seconds to expire the current lease if none answer 0"

	lease ifNil: [^0].
 
	^lease secondsToExpire