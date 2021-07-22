other
createGlobalDistributionReport
	| error |

	^self systemRoot  
			reportModificationDayDistributionQuantityFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]