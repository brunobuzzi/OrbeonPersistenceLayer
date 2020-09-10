test
testGenericSummaryWithSearch
	| formDefinition resultXml application version definition instance1 instance2 uuid1 uuid2 |

	formDefinition := self createFormStructure.

	application := self getOrbeonApplicationClass applicationNamed: 'agesic' ifNone: [self assert: false].
	version := 1.
	definition := application getDefinitionNamed: 'test-all-types-4' withVersion: version ifNone: [self assert: false].

	uuid1 := UUID new asString.
	uuid2 := UUID new asString.
	self createFormInstance: uuid1.
	self createFormInstance: uuid2.

	instance1 := formDefinition getInstanceWithId: uuid1 ifNone: [self assert: false].
	instance2 := formDefinition getInstanceWithId: uuid2 ifNone: [self assert: false].

	apiOperation := OrbeonInstanceSearchApi newWithXml: (self requestXmlForGenericSummaryWithSearch: 'bruno') application: application form: formDefinition.
	apiOperation setPageSize;
					setPageNumber;
					group: 'admin';
					user: 'admin';
					setUserCredentialsFrom: '';
					version: version.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: (self responseXmlForGenericSearchForArray: (Array with: instance1 with: instance2)).

	apiOperation := OrbeonInstanceSearchApi newWithXml: (self requestXmlForGenericSummaryWithSearch: 'john') application: application form: formDefinition.
	apiOperation setPageSize;
					setPageNumber;
					group: 'admin';
					user: 'admin';
					setUserCredentialsFrom: '';
					version: version.
	resultXml := apiOperation doIt.
	self assert: resultXml equals: (self responseXmlForGenericSearchNoMatches).