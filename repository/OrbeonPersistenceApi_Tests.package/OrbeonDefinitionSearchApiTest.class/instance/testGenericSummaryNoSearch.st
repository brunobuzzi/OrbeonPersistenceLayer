test
testGenericSummaryNoSearch
	| formDefinition resultXml |

	formDefinition := self createFormStructure.

	apiOperation := OrbeonDefinitionSearchApi newOn: testRoot withXml: self requestXmlForGenericSummaryNoSearch.
	apiOperation setPageSize;
		setPageNumber;
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: ''.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: (self responseXmlForGenericSummaryNoSearchFor: formDefinition)