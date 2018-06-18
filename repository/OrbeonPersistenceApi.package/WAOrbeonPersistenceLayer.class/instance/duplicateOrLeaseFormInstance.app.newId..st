service-put
duplicateOrLeaseFormInstance: formName app: app newId: id
	"This method is called by Orbeon when a user click 'Duplicate' in a Form Instance in the Form Runner"
	| apiOperation versionNumber |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	(self requestContext request headerAt: 'Timeout') isNil
	ifFalse: [
		versionNumber := (self requestContext request headerAt: 'orbeon-form-definition-version') ifNil: [1] ifNotNil: [:value | Number fromString: value].
		apiOperation := OrbeonFormInstanceDuplicateApi newFor: self withXml: self requestContext request rawBody id: id.
		apiOperation appName: app;
			formName: formName;
			version: versionNumber.]
	ifTrue: [].

	^apiOperation doIt