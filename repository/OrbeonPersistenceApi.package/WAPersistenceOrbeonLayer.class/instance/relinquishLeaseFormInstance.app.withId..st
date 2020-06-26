service-lock
relinquishLeaseFormInstance: formName app: app withId: id
	"This method is called by Orbeon when:
		* A user click 'Duplicate' in a Form Instance in the Form Runner
		* A user click 'Lease' or 'Reliquish Lease' in a Form Instance in the Form Runner"
	| apiOperation timeoutValue |
	<unlock>
	<path: '/crud/{2}/{1}/data/{3}/data.xml'>

	timeoutValue := self requestContext request headerAt: 'Timeout'.
	apiOperation := OrbeonFormInstanceRelinquishLeaseApi newFor: self withXml: (self requestContext request bodyDecodeUsing: 'utf-8') id: id.
	apiOperation appName: app;
		formName: formName.

	((app = 'orbeon') and: [formName = 'builder']) ifTrue: [^self requestContext response headerAt: 'timeout' put: 'Second-600']. "issue #189 & #190"

	^apiOperation doItIfRejected: [:instance :xmlRejection | self rejectRelinquishLeaseFor: instance withXml: xmlRejection]