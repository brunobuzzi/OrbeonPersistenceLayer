test
testIssue383
	| formDefinition resultXml clone1 clone2 |

	formDefinition := self createFormStructure.
	
	clone1 := self createClone.
	clone2 := self createClone.

	apiOperation := OrbeonDefinitionSearchApi newWithXml: self requestXmlForIssue383.
	apiOperation setPageSize;
		setPageNumber;
		group: nil;
		user: nil;
		setUserCredentialsFrom: ''.

	resultXml := apiOperation doIt.

	self assert: resultXml equals: self responseXmlForGenericSummaryForIssue383