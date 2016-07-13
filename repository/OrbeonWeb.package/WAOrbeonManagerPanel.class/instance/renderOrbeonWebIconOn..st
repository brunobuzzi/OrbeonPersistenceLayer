other
renderOrbeonWebIconOn: html
	| imgClass |

	imgClass  := (selectedToolBarOption = 'orbeon-web') ifTrue: ['top-toolbar-menu-selected-item'] ifFalse: [nil].

	html anchor callback: [self backToOrbeon]; 
					class: 'marginLeft5px';
					with: [html image url: (SEWAFFileLibrary / #appsGoogleDriveFormsPng); 
												class: imgClass; 
												title: 'Back to Forms';
												altText: 'Back to Forms'].