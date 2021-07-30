test
testIssue369
	| formDefinition resultXml application version definition instance uuid |

	formDefinition := self createRepeatableFormStructure.

	application := testRoot applicationNamed: 'agesic' ifNone: [self assert: false].
	version := 1.
	definition := application getDefinitionNamed: 'manual-form' withVersion: version ifNone: [self assert: false].

	uuid := UUID new asString.
	self createRepeatableFormInstance: uuid.
	instance := formDefinition getInstanceWithId: uuid ifNone: [self assert: false].

	apiOperation := OrbeonInstanceSearchApi newOn: testRoot withXml: self requestXmlForGenericSummaryNoSearch_369 application: application form: formDefinition.
	apiOperation setPageSize;
					setPageNumber;
					group: 'admin';
					user: 'admin';
					setUserCredentialsFrom: self jsonForTest;
					version: version.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: (self responseXmlForGenericSearch369For: instance)