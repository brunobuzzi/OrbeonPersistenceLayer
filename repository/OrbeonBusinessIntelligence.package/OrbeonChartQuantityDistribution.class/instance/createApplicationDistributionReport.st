other
createApplicationDistributionReport
	| error |

	^(self getOrbeonApplicationClass applicationNamed: self applicationName ifNone: []) 
			reportQuantityDistributionFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]