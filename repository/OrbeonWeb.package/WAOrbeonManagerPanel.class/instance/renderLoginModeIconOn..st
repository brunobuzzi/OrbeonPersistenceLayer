other
renderLoginModeIconOn: html
	| imgClass |

	imgClass  := (selectedToolBarOption = 'login-mode') ifTrue: ['top-toolbar-menu-selected-item'] ifFalse: [nil].

	html anchor callback: [self setLoginMode]; 
					class: 'marginLeft5px';
					with: [html image url: (SEWAFFileLibrary / #appspreferencessystemlogin64Png); 
												class: imgClass; 
												title: 'Set Login Mode';
												altText: 'Set Login Mode'].