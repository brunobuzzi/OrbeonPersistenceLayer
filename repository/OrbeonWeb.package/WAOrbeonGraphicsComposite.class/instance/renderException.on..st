render
renderException: anException on: html

	html div class: 'query-block-error'; 
		with: [html text: anException description. 
				html break; break.
				html text: ('The following code is using a non existing field or method: ' translateIn: self session).
				html break; break.
				html text: (anException blockSource allButFirst: 32)].