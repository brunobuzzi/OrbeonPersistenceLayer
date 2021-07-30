setUp
setUp
	| library |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'gs'.

	library := testRoot buildPublishedFormNamed: 'library'
									version: 1
									title: 'Library'
									withXml: self newDefinitionTemplate formDefinition_gs_library
									in: application.

	form := testRoot buildPublishedFormNamed: 'issue-385' 
					id: UUID new asString
					version: 1
					title: 'Issue 385' 
					publishedXml: self newDefinitionTemplate formDefinition_gs_issue_385
					savedXml: self newDefinitionTemplate formSavedDefinition_gs_issue_385
					in: application.