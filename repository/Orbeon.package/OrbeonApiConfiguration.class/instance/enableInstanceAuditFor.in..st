audit
enableInstanceAuditFor: formName in: app
	"The receiver enable the audit option for form named <formName> in application <app>"

	^((formsAudit at: app ifAbsentPut: [Dictionary new])
			at: formName ifAbsentPut: [Set new]) add: #instances