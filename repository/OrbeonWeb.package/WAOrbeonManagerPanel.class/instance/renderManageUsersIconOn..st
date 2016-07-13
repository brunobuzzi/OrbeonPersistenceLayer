other
renderManageUsersIconOn: html
	| imgClass |

	imgClass  := (selectedToolBarOption = 'manage-users') ifTrue: ['top-toolbar-menu-selected-item'] ifFalse: [nil].

	html div id: 'manager-option';
		with: [html div id: 'user-manager'; 
						with: [html anchor callback: [self setupUser];
										with: [html image url: (SEWAFFileLibrary / #officecustomermaleiconPng);
																class: imgClass; 
																title: 'Manage Users';
																altText: 'Manage Users']].
	]