other
createGlobalDistributionReport
	| error |

	^self systemRoot  
			reportCreationDistributionByMonthFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]