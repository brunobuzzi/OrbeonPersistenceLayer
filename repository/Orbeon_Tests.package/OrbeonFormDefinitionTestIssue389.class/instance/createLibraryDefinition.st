other
createLibraryDefinition
	| library |

	library := self createFormStructureFor: 'library' 
							version: 1 
							id: UUID new asString 
							in: 'gs' 
							definitionTemplate: #formDefinition_gs_library 
							title: 'Library' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.