test
testGenericSummaryNoSearch
	| formDefinition resultXml |

	formDefinition := self createFormStructure.

	apiOperation := OrbeonDefinitionSearchApi newWithXml: self requestXmlForGenericSummaryNoSearch.
	apiOperation setPageSize;
		setPageNumber;
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: ''.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: (self responseXmlForGenericSummaryNoSearchFor: formDefinition)