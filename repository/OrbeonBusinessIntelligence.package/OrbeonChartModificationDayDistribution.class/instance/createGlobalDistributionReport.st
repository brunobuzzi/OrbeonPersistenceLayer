other
createGlobalDistributionReport
	| error |

	^self getOrbeonApplicationClass  
			reportModificationDayDistributionQuantityFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]