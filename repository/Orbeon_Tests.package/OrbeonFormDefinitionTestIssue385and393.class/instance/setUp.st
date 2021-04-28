setUp
setUp
	| library |

	super setUp.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'gs'.

	library := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_gs_library
							name: 'library'
							version: 1 
							in: 'gs' 
							title: 'Library'.

	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_gs_issue_385 
						savedXml: self newDefinitionTemplate formSavedDefinition_gs_issue_385 
						name: 'issue-385' 
						version: 1 
						id: UUID new asString 
						in: 'gs'  
						title: 'Issue 385'.