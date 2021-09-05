setUp
setUp
	| library |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'gs'.

	library := testRoot buildPublishedFormNamed: 'library'
									version: 1
									title: 'Library'
									withXml: testRoot newDefinitionTemplate formDefinition_gs_library
									in: application.

	form := testRoot buildPublishedFormNamed: 'issue-385' 
					id: UUID new asString
					version: 1
					title: 'Issue 385' 
					publishedXml: testRoot newDefinitionTemplate formDefinition_gs_issue_385
					savedXml: testRoot newDefinitionTemplate formSavedDefinition_gs_issue_385
					in: application.