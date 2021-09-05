private
getRandomXmlStringTemplateMonth: monthIndex year: year

	^testRoot newInstanceTemplate
			form_chart_form: self randomGenerator peekRandomCompany 
			industry: #('software' 'hardware' 'oil' 'transportation' 'solar-energy') randomPeek
			total: (self randomGenerator peekRandomNumberOfSize: 6) 
			cost: (self randomGenerator peekRandomNumberOfSize: 5) 
			taxes: (self randomGenerator peekRandomNumberOfSize: 5)
			confirmed: #(true false) randomPeek
			paymentDate: (self randomGenerator peekRandomDateFromYear: year toYear: year fromMonth: monthIndex toMonth: monthIndex)
			invoiceType: #('export' 'import' 'services' 'free') randomPeek