service-put
duplicateOrLeaseFormInstance: formName app: app newId: id
	"This method is called by Orbeon when:
		* A user click 'Duplicate' in a Form Instance in the Form Runner
		* A user click 'Lease' or 'Reliquish Lease' in a Form Instance in the Form Runner"
	| apiOperation versionNumber operationClass timeoutValue |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	timeoutValue := self requestContext request headerAt: 'Timeout'.
	versionNumber := (self requestContext request headerAt: 'orbeon-form-definition-version') ifNil: [1] ifNotNil: [:value | Number fromString: value].
	operationClass := timeoutValue isNil ifTrue: [OrbeonFormInstanceDuplicateApi] ifFalse: [OrbeonFormInstanceLeaseApi].
	apiOperation := operationClass newFor: self withXml: self requestContext request rawBody id: id.
	apiOperation appName: app;
		formName: formName;
		version: versionNumber.

	timeoutValue ifNotNil: [apiOperation setTimeoutFromString: timeoutValue]. 

	^apiOperation doIt