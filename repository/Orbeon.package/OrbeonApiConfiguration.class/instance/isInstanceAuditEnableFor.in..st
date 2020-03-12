audit
isInstanceAuditEnableFor: formName in: app
	"The receiver answer whether of not the audit option is enabled for form named <formName> in application <app>"

	^((formsAudit at: app ifAbsent: [^false])
			at: formName ifAbsent: [^false]) includes: #instances