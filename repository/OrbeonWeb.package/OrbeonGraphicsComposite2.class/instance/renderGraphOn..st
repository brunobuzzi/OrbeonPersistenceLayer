render
renderGraphOn: html

	html div id: 'orbeon-graph'; class: 'margin-top-15px'; with: [html html: svgCanvas contents].

	graphName := nil.