other
generateReportIn: anOrderedCollection

	importedData do: [:each | | rowReport definition |
		rowReport := FormImportReport app: each app form: each formName.
		rowReport numberOfForms: 1.
		anOrderedCollection add: rowReport.
		each definition getFieldsWithHyphen do: [:eachField | | warning |
			warning := FormImportWarning report: rowReport fieldName: eachField name.
			warning warningDetails: 'Field name [', eachField name, '] has hyphen character.'.
			rowReport addWarning: warning]].