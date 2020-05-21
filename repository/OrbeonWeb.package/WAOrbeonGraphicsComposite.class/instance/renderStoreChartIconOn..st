render
renderStoreChartIconOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 280 height: 270 composite: WANewOrbeonChartPopupComponent title: 'Store Chart' domainObject: chartDefinition arguments: #().

	html div class: 'float-right'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #actionsdocumentsaveas24Png); 
												title: ('Store Chart' translateIn: self session); 
												altText: ('Store Chart' translateIn: self session) ]
	]