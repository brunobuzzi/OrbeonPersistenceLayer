other
renderContentOn: html

	html form with: [
		html fieldSet with:[
			html legend with: 'Export Mode'.
			html radioGroup
				callback: [:value | exportMode := value];
				selected: exportMode;
				with: [ :group |
					self getAllExportOptions do: [:each |
						html label: [ group radioButton onChange: 'submit()'; value: each.
							html text: each]]].
			html submitButton callback: [self downloadCSV]; with: 'Download CSV'.
		].
	].