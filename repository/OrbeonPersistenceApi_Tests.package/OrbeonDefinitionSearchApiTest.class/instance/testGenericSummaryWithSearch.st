test
testGenericSummaryWithSearch
	| formDefinition resultXml |

	formDefinition := self createFormStructure.

	apiOperation := OrbeonDefinitionSearchApi newOn: self systemRoot withXml: (self requestXmlForGenericSummaryWithSearch: 'agesic').
	apiOperation setPageSize;
		setPageNumber;
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: ''.

	resultXml := apiOperation doIt.
	self assert: resultXml equals: (self responseXmlForGenericSummaryNoSearchFor: formDefinition).


	apiOperation := OrbeonDefinitionSearchApi newOn: self systemRoot withXml: (self requestXmlForGenericSummaryWithSearch: 'agesic2').
	apiOperation setPageSize;
		setPageNumber;
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: ''.

	resultXml := apiOperation doIt.
	self assert: resultXml equals: (self responseXmlForSearchWithNoMatchesFor: formDefinition).