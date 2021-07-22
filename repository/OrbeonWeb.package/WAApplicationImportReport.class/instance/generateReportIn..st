other
generateReportIn: anOrderedCollection

	importedData keysAndValuesDo: [:appKey :appDict |
		appDict keysAndValuesDo: [:formKey :value | | rowReport definition |
			rowReport := FormImportReport app: appKey form: formKey.
			rowReport numberOfForms: value size.
			anOrderedCollection add: rowReport.
			definition := (self session systemRoot applicationNamed: appKey) definitionNamed: formKey.
			definition getFieldsWithHyphen do: [:eachField | | warning |
				warning := FormImportWarning report: rowReport fieldName: formKey.
				warning warningDetails: 'Field name [', eachField name, '] has hyphen character.'.
				rowReport addWarning: warning]]].