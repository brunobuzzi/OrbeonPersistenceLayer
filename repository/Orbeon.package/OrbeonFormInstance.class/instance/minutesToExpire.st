lease
minutesToExpire
	"The receiver answer the mitues to expire the current lease if none answer 0"

	lease ifNil: [^0].
 
	^lease minutesToExpire