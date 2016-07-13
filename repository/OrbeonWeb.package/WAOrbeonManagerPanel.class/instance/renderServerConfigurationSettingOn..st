other
renderServerConfigurationSettingOn: html
	| imgClass |

	imgClass  := (selectedToolBarOption = 'servers-configuration') ifTrue: ['top-toolbar-menu-selected-item'] ifFalse: [nil].

	html anchor callback: [self serversConfiguration]; 
					class: 'marginLeft15px';
					with: [html image url: (SEWAFFileLibrary / #serversetting64Png); 
												class: imgClass; 
												title: 'Servers Configuration';
												altText: 'Servers Configuration'].