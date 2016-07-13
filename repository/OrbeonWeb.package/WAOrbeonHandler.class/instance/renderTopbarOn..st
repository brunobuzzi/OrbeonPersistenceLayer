render
renderTopbarOn: html

	html div id: 'top-bar';
		class: 'section';
		with: [
				html anchor callback: [self newFormDefinition];
						with: [html image  url: (SEWAFFileLibrary / #edit24Png); altText: 'New Form Definition'; title: 'New Form Definition'].
				self session user isAdmin ifTrue:[
					html anchor callback: [self setupConfiguration];
							with: [html image  url: (SEWAFFileLibrary / #formConfigPng); altText: 'System Configuration'; title: 'System Configuration']].
				html anchor callback: [self logout];
						with: [html image  url: (SEWAFFileLibrary / #logouticonPng); altText: 'Logout'; title: 'Logout'].
				]