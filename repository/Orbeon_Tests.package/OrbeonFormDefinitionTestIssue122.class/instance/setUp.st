setUp
setUp
	| library |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.

	library := testRoot buildPublishedFormNamed: 'library'
									version: 1
									title: 'Library'
									withXml: testRoot newDefinitionTemplate formDefinition_ue_library
									in: application.

	form := testRoot 
					buildPublishedFormNamed: 'issue122' 
					id: UUID new asString
					version: 1
					title: 'Test' 
					publishedXml: testRoot newDefinitionTemplate formDefinition_ue_issue_122
					savedXml: testRoot newDefinitionTemplate formSavedDefinition_ue_issue_122
					in: application.