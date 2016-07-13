import
renderComboOn: html

	html form
	with: [
		html fieldSet
		with: [
			html legend with: 'Applications'.
			html select list: appList; title: 'Applications';
				callback: [:value | self onSelectedApplicationChanged: value];
				selected: (selectedApplication ifNotNil: [selectedApplication applicationName] ifNil: ['']);
				onChange: 'submit()'.
			html submitButton callback: [self importNewApplications];
									with: 'Import New Applications'.
			html submitButton callback: [self updateApplication: selectedApplication];
				with: 'Import New Definitions'.
				]
		].