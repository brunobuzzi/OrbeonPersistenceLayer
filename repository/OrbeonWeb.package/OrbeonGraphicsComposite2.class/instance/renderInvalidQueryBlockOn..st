render
renderInvalidQueryBlockOn: html

	html div class: 'query-block-error'; 
		with: [html text: (self componentValueAt: 'queryBlock-error') . 
				html break; break.
				html text: ('The following code is using a non existing field or method: ' translateIn: self session).
				html break; break.
				html text: (self searchValueAt: 'form-condition')].