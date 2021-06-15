test
testGenericSummaryNoSearch
	| formDefinition resultXml |

	formDefinition := self createFormStructure.

	apiOperation := OrbeonDefinitionSearchApi newOn: self systemRoot withXml: self requestXmlForGenericSummaryNoSearch.
	apiOperation setPageSize;
		setPageNumber;
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: ''.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: (self responseXmlForGenericSummaryNoSearchFor: formDefinition)