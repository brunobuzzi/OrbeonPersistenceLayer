other
createApplicationDistributionReport
	| error |

	^(self systemRoot applicationNamed: self applicationName ifNone: []) 
			reportCreationDistributionByMonthFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]