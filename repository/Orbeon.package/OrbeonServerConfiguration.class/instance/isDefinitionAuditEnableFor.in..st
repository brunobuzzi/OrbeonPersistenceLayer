audit
isDefinitionAuditEnableFor: formName in: app
	"The receiver answer whether of not the audit option is enabled for form definition named <formName> in application <app>"

	^((formsAudit at: app ifAbsent: [^false])
			at: formName ifAbsent: [^false]) includes: #definitions