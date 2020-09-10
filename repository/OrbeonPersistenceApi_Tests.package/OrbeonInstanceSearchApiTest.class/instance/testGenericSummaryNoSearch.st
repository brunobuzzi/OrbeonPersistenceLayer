test
testGenericSummaryNoSearch
	| formDefinition resultXml application version definition instance uuid |

	formDefinition := self createFormStructure.

	application := self getOrbeonApplicationClass applicationNamed: 'agesic' ifNone: [self assert: false].
	version := 1.
	definition := application getDefinitionNamed: 'test-all-types-4' withVersion: version ifNone: [self assert: false].

	apiOperation := OrbeonInstanceSearchApi newWithXml: self requestXmlForGenericSummaryNoSearch application: application form: formDefinition.

	uuid := UUID new asString.
	self createFormInstance: uuid.
	instance := formDefinition getInstanceWithId: uuid ifNone: [self assert: false].

	apiOperation setPageSize;
					setPageNumber;
					group: 'admin';
					user: 'admin';
					setUserCredentialsFrom: self jsonForTest;
					version: version.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: (self responseXmlForGenericSearchFor: instance)