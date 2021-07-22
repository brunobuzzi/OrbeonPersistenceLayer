other
createGlobalDistributionReport
	| error |

	^self systemRoot  
			reportModificationDistributionByMonthFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]