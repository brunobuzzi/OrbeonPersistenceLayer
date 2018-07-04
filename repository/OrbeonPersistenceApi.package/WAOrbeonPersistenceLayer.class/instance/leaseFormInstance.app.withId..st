service-lock
leaseFormInstance: formName app: app withId: id
	"This method is called by Orbeon when:
		* A user click 'Duplicate' in a Form Instance in the Form Runner
		* A user click 'Lease' or 'Reliquish Lease' in a Form Instance in the Form Runner"
	| apiOperation timeoutValue |
	<lock>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	timeoutValue := self requestContext request headerAt: 'timeout'.
	apiOperation := OrbeonFormInstanceGetLeaseApi newFor: self withXml: self requestContext request rawBody id: id.
	apiOperation appName: app;
		formName: formName.

	timeoutValue ifNotNil: [apiOperation setTimeoutFromString: timeoutValue]. 

	^apiOperation doIt