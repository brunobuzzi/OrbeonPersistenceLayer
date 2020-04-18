other
createGlobalDistributionReport
	| error |

	^self getOrbeonApplicationClass  
			reportCreationDayDistributionQuantityFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]