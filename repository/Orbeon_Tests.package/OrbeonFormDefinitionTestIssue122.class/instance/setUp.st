setUp
setUp
	| library |

	super setUp.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	library := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library
							name: 'library'
							version: 1 
							in: 'ue' 
							title: 'Library'.

	"form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_issue_122
							name: 'issue122'
							version: 1 
							in: 'ue' 
							title: 'Issue 122'."

	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_issue_122 
						savedXml: self newDefinitionTemplate formSavedDefinition_ue_issue_122 
						name: 'issue122' 
						version: 1 
						id: UUID new asString 
						in: 'ue' 
						title: 'Issue 122'.