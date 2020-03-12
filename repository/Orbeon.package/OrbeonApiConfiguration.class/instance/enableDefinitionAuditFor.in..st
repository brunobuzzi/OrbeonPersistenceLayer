audit
enableDefinitionAuditFor: formName in: app
	"The receiver enable the audit option for form definition named <formName> in application <app>"

	^((formsAudit at: app ifAbsentPut: [Dictionary new])
			at: formName ifAbsentPut: [Set new]) add: #definitions