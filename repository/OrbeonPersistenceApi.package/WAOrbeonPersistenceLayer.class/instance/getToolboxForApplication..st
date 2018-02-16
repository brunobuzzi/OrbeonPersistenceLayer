service-get
getToolboxForApplication: appName
	"This method is called by Orbeon when the Form Builder is about to be Opened.
	It show the available -Library- forms for the application named <appName> "
	| apiOperation |
	<get>
	<produces: 'application/xml'>
	<path: '/custom/{1}/builder/toolbox'>

	apiOperation := OrbeonGetToolboxApi newFor: self.
	apiOperation appName: appName;
		headerValue: (self requestContext request headerAt: 'orbeon-form-definition-version').

	^apiOperation doIt