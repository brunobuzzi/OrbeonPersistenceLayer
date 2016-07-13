other
renderManageGemsOn: html

	html div id: 'manager-option';
		with: [html div id: 'manage-gems'; 
						with: [html label with: 'Manage Gems'.
								html break.
								html anchor callback: [self systemManageGems];
												with: [html image url: (SEWAFFileLibrary / #diamondiconPng).]].
		]