other
renderReportOn: html

	html label with: 'Name'.
	html text: currentReport name.
html break.
	html label with: 'Descritpion'.
	html text: currentReport description.
html break.
	html label with: 'Created Time'.
	html text: currentReport createdTime.
html break.
	html label with: 'Time to Construct'.
	html text: currentReport secondsToConstruct.
html break.
	html label with: 'Is Closed'.
	html text: currentReport isClosed.
html break.
	html label with: 'Start Date'.
	html text: currentReport startDate.
html break.
	html label with: 'End Date'.
	html text: currentReport endDate.
html break.
	html label with: 'Distribution Method'.
	html text: currentReport distributionMethod.
html break.
	html label with: 'Condition'.
	html text: currentReport conditionStringBlock.
html break.
	html label with: 'Creator'.
	html text: currentReport userName.