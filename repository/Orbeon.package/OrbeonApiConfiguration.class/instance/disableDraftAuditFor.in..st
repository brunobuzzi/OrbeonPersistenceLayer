audit
disableDraftAuditFor: formName in: app
	"The receiver disable the audit option for drafts of form named <formName> in application <app>"

	^((formsAudit at: app ifAbsentPut: [Dictionary new])
			at: formName ifAbsentPut: [Set new]) remove: #drafts ifAbsent: []