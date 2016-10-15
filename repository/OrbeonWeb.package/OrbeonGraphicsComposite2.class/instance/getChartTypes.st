charts names
getChartTypes

	self isGlobalScope 
	ifTrue: [^#('Bar Quantity' 'Day Distribution Creation' 'Day Distribution Modification' 'Donut Creation by Month' 'Donut Modification by Month' 'Donut Quantity')].

	self isApplicationScope 
	ifTrue: [^#('Bar Quantity' 'Day Distribution Creation' 'Day Distribution Modification' 'Donut Creation by Month' 'Donut Modification by Month' 'Donut Quantity')].

	self isFormDefinitionAllVersionsScope 
	ifTrue: [^#('Bar Quantity' 'Day Distribution Creation' 'Day Distribution Modification' 'Donut Creation by Month' 'Donut Modification by Month' 'Donut Quantity')].

	self isFormDefinitionScope 
	ifTrue: [^#('Day Distribution Creation' 'Day Distribution Modification' 'Donut Creation by Month' 'Donut Modification by Month' 'Donut Field Type Distribution')].

	self isFieldValuesScope 
	ifTrue: [^#('Bar Quantity' 'Day Distribution Creation' 'Day Distribution Modification' 'Donut Creation by Month' 'Donut Modification by Month' 'Donut Quantity')].

	^#()