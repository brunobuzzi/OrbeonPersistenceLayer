other
testDoItIfNotFound_creationRejected
	| error |
 
	apiOperation headerVersion: 'next'.

	apiOperation doItIfNotFound: [self assert: false].

	apiOperation id: UUID new asString.
	[apiOperation doItIfNotFound: [self assert: false]] on: AlreadyExistApplicationOrFormNameException do: [:ex | error := ex. self assert: true].

	self assert: error notNil