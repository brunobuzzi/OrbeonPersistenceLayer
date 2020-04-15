render
renderAddFieldIconOn: html

	html anchor 
		class: 'float-right';
		callback: [selectedFields add: self getFieldName];
		with: [
			html image url: (SEWAFIconLibrary / #add24Png); 
				altText: 'Add Field'; 
				title: 'Add Field'.
		].