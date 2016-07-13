other
renderChartsOn: html

	html div id: 'chart-option';
		with: [html div id: 'chart-graph'; 
						with: [html label with: 'Graficas de Formularios'.
								html break.
								html anchor callback: [self showCharts];
												with: [html image url: (SEWAFFileLibrary / #charticonPng).]].
		]