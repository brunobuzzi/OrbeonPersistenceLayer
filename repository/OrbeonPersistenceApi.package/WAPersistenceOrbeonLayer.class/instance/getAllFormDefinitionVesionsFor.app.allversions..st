service-get
getAllFormDefinitionVesionsFor: formName app: app allversions: aStringBoolean
	"Implemented as stated in: 
	https://doc.orbeon.com/form-runner/api/persistence/forms-metadata.html#returning-all-form-definition-versions"
	| apiOperation |
	<get>
	<produces: 'application/xml'>
	<path: '/form/{2}/{1}?all-versions={3}'>

	apiOperation := OrbeonAllFormDefinitionVersionsApi newFor: self.
	apiOperation appName: app;
		formName: formName;
		allversions: aStringBoolean.

	^apiOperation doIt