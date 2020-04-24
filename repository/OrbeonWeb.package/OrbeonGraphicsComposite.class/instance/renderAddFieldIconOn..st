render
renderAddFieldIconOn: html

	html anchor 
		class: 'float-right';
		callback: [self addFieldToCompare];
		with: [
			html image url: (SEWAFIconLibrary / #add24Png); 
				altText: 'Add Field'; 
				title: 'Add Field'.
		].