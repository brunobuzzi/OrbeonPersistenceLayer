setUp
setUp
	| library |

	super setUp.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	library := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library
							name: 'library'
							version: 1 
							in: 'ue' 
							title: 'Library'.

	form := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_ue_issue_122
							name: 'issue122'
							version: 1 
							in: 'ue' 
							title: 'Issue 122'.