setUp
setUp
	| library |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.

	library := testRoot buildPublishedFormNamed: 'library'
									version: 1
									title: 'Library'
									withXml: self newDefinitionTemplate formDefinition_ue_library
									in: application.

	form := testRoot 
					buildPublishedFormNamed: 'issue122' 
					id: UUID new asString
					version: 1
					title: 'Test' 
					publishedXml: self newDefinitionTemplate formDefinition_ue_issue_122
					savedXml: self newDefinitionTemplate formSavedDefinition_ue_issue_122
					in: application.