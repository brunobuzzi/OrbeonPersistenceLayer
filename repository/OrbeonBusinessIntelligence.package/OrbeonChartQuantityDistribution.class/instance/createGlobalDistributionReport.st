other
createGlobalDistributionReport
	| error |

	^self systemRoot reportQuantityDistributionFrom: self startDate to: self endDate satisfying: self queryBlock onError: [:ex | error := ex].