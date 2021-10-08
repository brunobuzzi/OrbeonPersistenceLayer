dashboard form process
formInstance_ue_dashboard_form: invoiceAmount cost: cost deductible: deductible confirmed: confirmed directClient: directClient country: country city: city industry: industry date: orbeonStringDate
	| invoiceAmountTax costTax deductibleTax total totalTax |

	invoiceAmountTax := invoiceAmount * 0.22.
	costTax := cost * 0.22.
	deductibleTax := deductible * 0.1.
	total := invoiceAmount + deductible - cost.
	totalTax := invoiceAmount + invoiceAmountTax + deductible + deductibleTax - cost -costTax.

^'<?xml version="1.0" encoding="UTF-8"?>
<form xmlns:fr="http://orbeon.org/oxf/xml/form-runner" fr:data-format-version="2019.1.0">
	<internal-section>
		<grid-1>
			<s>ApGa9W3Ul4nHOlSi</s>
			<k>y0XV1CcVU7W38FRU</k>
			<uuid>7d3fa7fd-135a-44eb-bd85-16fd8e27db87</uuid>
			<oop>7329584385</oop>
			<assignmentOop>7329585665</assignmentOop>
		</grid-1>
	</internal-section>
	<section-11>
		<grid-2>
			<username>john</username>
			<rol>[dashboard-manager]</rol>
			<processId>65465464</processId>
		</grid-2>
	</section-11>
	<section-12>
		<grid-3>
			<invoiceAmount>',invoiceAmount printString,'</invoiceAmount>
			<invoiceTax>',invoiceAmountTax printString,'</invoiceTax>
			<cost>',cost printString,'</cost>
			<costTax>',costTax printString,'</costTax>
			<deductible>',deductible printString,'</deductible>
			<deductibleTax>',deductibleTax printString,'</deductibleTax>
			<total>',total printString,'</total>
			<totalWithTaxes>',totalTax printString,'</totalWithTaxes>
			<paymentDate>', orbeonStringDate, '</paymentDate>
			<confirmed>',confirmed printString,'</confirmed>
			<industry>',industry,'</industry>
			<directClient>',directClient printString,'</directClient>
			<country>',country,'</country>
			<city>',city,'</city>
		</grid-3>
	</section-12>
</form>'