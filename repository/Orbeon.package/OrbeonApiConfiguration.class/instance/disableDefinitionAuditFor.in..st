audit
disableDefinitionAuditFor: formName in: app
	"The receiver disable the audit option for form definition named <formName> in application <app>"

	^((formsAudit at: app ifAbsentPut: [Dictionary new])
			at: formName ifAbsentPut: [Set new]) remove: #definitions ifAbsent: []