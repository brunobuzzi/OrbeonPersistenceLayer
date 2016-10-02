render
renderGraphOn: html

	html div id: 'orbeon-graph'; class: 'overflow-scroll'; with: [html html: svgCanvas contents].

	graphName := nil.