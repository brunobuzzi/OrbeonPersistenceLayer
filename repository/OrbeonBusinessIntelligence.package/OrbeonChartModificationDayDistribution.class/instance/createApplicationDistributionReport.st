other
createApplicationDistributionReport
	| error |

	^(self systemRoot applicationNamed: self applicationName ifNone: []) 
			reportModificationDayDistributionQuantityFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]