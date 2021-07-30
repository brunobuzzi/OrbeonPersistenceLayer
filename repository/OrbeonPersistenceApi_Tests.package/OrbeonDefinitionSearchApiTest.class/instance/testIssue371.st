test
testIssue371
	| formDefinition resultXml clone1 clone2 |

	formDefinition := self createFormStructure.
	
	clone1 := self createClone.
	clone2 := self createClone.

	apiOperation := OrbeonDefinitionSearchApi newOn: testRoot withXml: self requestXmlForGenericSummaryNoSearch.
	apiOperation setPageSize;
		setPageNumber;
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: ''.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: (self responseXmlForGenericSummaryNoSearchWithClonesFor: (Array with: clone2 with: clone1 with: formDefinition))