other
createLibraryDefinition
	| library |

	library := self createFormStructureFor: 'library' 
							version: 1 
							id: UUID new asString 
							in: 'ue' 
							definitionTemplate: #formDefinition_ue_library 
							title: 'Library' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.