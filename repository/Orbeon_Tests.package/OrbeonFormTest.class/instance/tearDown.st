other
tearDown

	super tearDown.

	self keepTempObjectsInSystem ifFalse: [application removeFromCache]