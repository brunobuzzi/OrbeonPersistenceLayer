render
renderGraphicsOptionsSwitchIconOn: html

	html anchor 
		callback: [showOptionsForms := showOptionsForms not];
		with: [html image url: (SEWAFIconLibrary / #photovideoswitchcameraPng)]