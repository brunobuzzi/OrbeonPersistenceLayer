other
renderContentOn: html

	html form with: [
		html fieldSet class: 'border-none'; with:[
			html legend with: 'Export Mode'.
			html radioGroup
				callback: [:value | exportMode := value];
				selected: exportMode;
				with: [:group |
					self getAllExportOptions do: [:each |
						html label
									class: 'display-block';
									with: [group radioButton onChange: 'submit()'; value: each.
											html text: each].
					]
				].
			html submitButton 
					class: 'margin-right-10px margin-top-10px';
					callback: [self downloadCSV]; with: 'Download CSV'.
		].
	].