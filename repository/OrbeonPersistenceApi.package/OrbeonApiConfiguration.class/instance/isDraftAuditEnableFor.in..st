audit
isDraftAuditEnableFor: formName in: app
	"The receiver answer whether of not the audit option is enabled for draft of form named <formName> in application <app>"

	^((formsAudit at: app ifAbsent: [^false])
			at: formName ifAbsent: [^false]) includes: #drafts