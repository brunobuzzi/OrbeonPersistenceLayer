render
renderGraphicsOptionsSwitchIconOn: html

	html anchor 
		callback: [showOptionsForms := true];
		with: [html image url: (SEWAFIconLibrary / #photovideoswitchcameraPng)]