other
renderWAOrbeonHandlerShapeOn: html

	self renderBannerOn: html.

	"self renderSidebarOn: html."

	html div id: 'content'; 
				with: [html render: nil.].