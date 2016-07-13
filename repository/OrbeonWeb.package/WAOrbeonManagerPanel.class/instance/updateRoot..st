other
updateRoot: anHtmlRoot
	"This method allow to use CSS and JavaScript"

	anHtmlRoot meta responseHeaderName: 'Content-Style-Type'; content: 'text/css'.

	super updateRoot: anHtmlRoot.

	anHtmlRoot title: 'Persona Web Panel'.