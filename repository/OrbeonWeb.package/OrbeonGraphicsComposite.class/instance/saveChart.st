other
saveChart

	distributionReport ifNil: [^self].

	distributionReport addToCache.

	distributionReport creator: self session user.