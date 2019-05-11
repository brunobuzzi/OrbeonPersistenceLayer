service-put
duplicateFormInstance: formName app: app newId: id
	"This method is called by Orbeon when:
		* A user click 'Duplicate' in a Form Instance in the Form Runner
		* A user click 'Lease' or 'Reliquish Lease' in a Form Instance in the Form Runner"
	| apiOperation versionNumber |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	versionNumber := (self requestContext request headerAt: 'orbeon-form-definition-version') ifNil: [1] ifNotNil: [:value | Number fromString: value].
	apiOperation := OrbeonFormInstanceDuplicateApi newFor: self withXml: (self requestContext request bodyDecodeUsing: 'utf-8') id: id.
	apiOperation appName: app;
		formName: formName;
		version: versionNumber.

	^apiOperation doIt