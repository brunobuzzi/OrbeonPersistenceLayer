render
renderRemoveFieldIconOn: html

	html anchor 
		class: 'float-right';
		callback: [self removeFieldToCompare];
		with: [
			html image url: (SEWAFIconLibrary / #remove24Png); 
				altText: 'Remove Field'; 
				title: 'Remove Field'.
		].