other
renderGarbageCollectorOn: html

	html div id: 'manager-option';
		with: [html div id: 'garbage-collector'; 
						with: [html label with: 'Depurar Repositorio'.
								html break.
								html anchor callback: [self systemCollectGarbage];
												with: [html image url: (SEWAFFileLibrary / #databaseactiveiconPng).]].
		]