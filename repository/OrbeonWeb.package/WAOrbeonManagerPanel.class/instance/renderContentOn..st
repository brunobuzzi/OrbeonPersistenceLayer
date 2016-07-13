other
renderContentOn: html

	self renderBannerOn: html.

	self renderOptionsOn: html.
	arena notNil 
		ifTrue: [html div id: 'managerPanel'; style: 'margin-left: 0px;';
					with: [html render: arena].]