dashboard process
form_dashboard_form: invoiceAmount cost: cost deductible: deductible confirmed: confirmed directClient: directClient country: country city: city industry: industry
	| invoiceAmountTax costTax deductibleTax total totalTax |

	invoiceAmountTax := invoiceAmount * 0.22.
	costTax := cost * 0.22.
	deductibleTax := deductible * 0.1.
	total := invoiceAmount + deductible - cost.
	totalTax := invoiceAmount + invoiceAmountTax + deductible + deductibleTax - cost -costTax.

^'<?xml version="1.0" encoding="UTF-8"?><form>
                    <internal-section>
                        <s>ApGa9W3Ul4nHOlSi</s>
                        <k>y0XV1CcVU7W38FRU</k>
                        <uuid>7d3fa7fd-135a-44eb-bd85-16fd8e27db87</uuid>
                        <oop>7329584385</oop>
                        <assignmentOop>7329585665</assignmentOop>
                    </internal-section>
                    <section-11>
                        <username>john</username>
                        <rol>[dashboard-manager]</rol>
                        <processId>65465464</processId>
                    </section-11>
                    <section-12>
                        <invoiceAmount>',invoiceAmount printString,'</invoiceAmount>
                        <invoiceTax>',invoiceAmountTax printString,'</invoiceTax>
                        <cost>',cost printString,'</cost>
                        <costTax>',costTax printString,'</costTax>
                        <deductible>',deductible printString,'</deductible>
                        <deductibleTax>',deductibleTax printString,'</deductibleTax>
                        <total>',total printString,'</total>
                        <totalWithTaxes>',totalTax printString,'</totalWithTaxes>
                        <paymentDate>2019-08-18</paymentDate>
                        <confirmed>',confirmed printString,'</confirmed>
                        <industry>',industry,'</industry>
                        <directClient>',directClient printString,'</directClient>
                        <country>',country,'</country>
                        <city>',city,'</city>
                    </section-12>
                </form>'