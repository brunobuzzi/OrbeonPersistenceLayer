other
renderContentOn: html

	self renderSidebarOn: html.

	html div id: 'orbeon-formInstances';
		with: ["self renderFormsInstancesOn: html"
				html heading level3; with: 'Formularios en Diseño'.
				html render: self reportDefinition].