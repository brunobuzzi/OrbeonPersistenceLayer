render
renderOpenCloseIconOn: html
	| iconSymbol |

	iconSymbol := showDefinitionList ifTrue:[#arrowsupcircular16Png] ifFalse: [#arrowsdowncircular16Png].

	html anchor 
		class: 'float-left';
		callback: [showDefinitionList := true. showOptionsForms := true];
		with: [
			html image url: (SEWAFIconLibrary / iconSymbol); 
				altText: 'Toggle Window'; 
				title: 'Toggle Window'.
		].