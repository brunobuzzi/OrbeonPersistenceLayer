other
renderContentOn: html

	self renderWAOrbeonHandlerShapeOn: html.

	html div id: 'info-area';
		with: [html heading level2 with: 'Form Structure: [', model getApplicationName, '].[', model formName, ']'.
			html div id: 'field-names'; with: [
					html render: self listOfFieldNames.
				].
			html div id: 'search-types'; with: [
					html render: self listOfSearchFields.
				].
			html div id: 'summary'; with: [
					html render: self listOfSummaryFields.
				].
			html div id: 'permissions'; with: [
					html render: self listOfPermissions.
				].
	html div id: 'close-button'; with:[html form with: [
					html fieldSet with: [html submitButton callback: [self answer]; with: 'Close'.]]]
	].