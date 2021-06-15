test
testIssue374
	| formDefinition resultXml application version definition instance1 instance2 draft1 uuid |

	formDefinition := self createRepeatableFormStructure.

	application := self getOrbeonApplicationClass applicationNamed: 'agesic' ifNone: [self assert: false].
	version := 1.
	definition := application getDefinitionNamed: 'manual-form' withVersion: version ifNone: [self assert: false].

	uuid := UUID new asString.
	self createRepeatableFormInstance: uuid.
	instance1 := formDefinition getInstanceWithId: uuid ifNone: [self assert: false].

	uuid := UUID new asString.
	self createRepeatableFormInstance: uuid.
	instance2 := formDefinition getInstanceWithId: uuid ifNone: [self assert: false].

	uuid := UUID new asString.
	self createRepeatableFormDraft: uuid.
	draft1 := formDefinition getDraftWithId: uuid ifNone: [self assert: false].


	apiOperation := OrbeonInstanceSearchApi newOn: self systemRoot withXml: self requestXmlForGenericSummaryNoSearch_369 application: application form: formDefinition.
	apiOperation setPageSize;
					setPageNumber;
					group: 'admin';
					user: 'admin';
					setUserCredentialsFrom: self jsonForTest;
					version: version.

	resultXml := apiOperation doIt.