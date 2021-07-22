other
createGlobalDistributionReport
	| error |

	^self systemRoot  
			reportCreationDayDistributionQuantityFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]