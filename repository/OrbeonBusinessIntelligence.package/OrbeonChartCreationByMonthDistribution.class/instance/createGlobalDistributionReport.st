other
createGlobalDistributionReport
	| error |

	^self getOrbeonApplicationClass  
			reportCreationDistributionByMonthFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]