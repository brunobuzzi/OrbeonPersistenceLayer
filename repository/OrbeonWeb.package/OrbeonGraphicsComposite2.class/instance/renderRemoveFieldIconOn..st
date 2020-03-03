render
renderRemoveFieldIconOn: html

	html anchor 
		class: 'float-right';
		callback: [selectedFields remove: self getFieldName ifAbsent: []];
		with: [
			html image url: (SEWAFIconLibrary / #remove24Png); 
				altText: 'Remove Field'; 
				title: 'Remove Field'.
		].