other
createGlobalDistributionReport
	| error |

	^self getOrbeonApplicationClass  
			reportModificationDistributionByMonthFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]