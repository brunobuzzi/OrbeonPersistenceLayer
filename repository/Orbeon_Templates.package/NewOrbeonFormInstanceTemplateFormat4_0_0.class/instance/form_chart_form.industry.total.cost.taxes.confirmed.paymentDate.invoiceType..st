charts
form_chart_form: company industry: industry total: total cost: cost taxes: taxes confirmed: confirmed paymentDate: paymentDate invoiceType: invoiceType

	^'<?xml version="1.0" encoding="UTF-8"?>
<form xmlns:fr="http://orbeon.org/oxf/xml/form-runner" fr:data-format-version="4.0.0">
	<section-1>
		<name>', company,'</name>
		<industry>', industry,'</industry>
		<invoiceTotal>',total printString,'</invoiceTotal>
		<associatedCost>', cost printString,'</associatedCost>
		<taxes>', taxes printString,'</taxes>
		<confirmed>', confirmed printString,'</confirmed>
		<paymentDate>', paymentDate printOrbeonString,'</paymentDate>
		<invoiceType>', invoiceType,'</invoiceType>
	</section-1>
</form>'