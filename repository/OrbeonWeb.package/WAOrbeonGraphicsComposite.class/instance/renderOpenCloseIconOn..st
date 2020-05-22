render
renderOpenCloseIconOn: html

	html anchor 
		class: 'float-left';
		callback: [showDefinitionList := true. isRenderingChart := false];
		with: [
			html image url: (SEWAFIconLibrary / #playstationcrossblackandwhite16Png); 
				altText: 'Toggle Window'; 
				title: 'Toggle Window'.
		].