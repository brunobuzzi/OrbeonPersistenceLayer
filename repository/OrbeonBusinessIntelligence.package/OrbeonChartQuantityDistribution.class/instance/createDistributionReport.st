other
createDistributionReport
	| error |

	^self getOrbeonApplicationClass reportQuantityDistributionFrom: self startDate to: self endDate satisfying: self queryBlock onError: [:ex | error := ex].