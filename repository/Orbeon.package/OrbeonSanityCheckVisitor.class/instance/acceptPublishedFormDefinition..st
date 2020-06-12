other
acceptPublishedFormDefinition: anOrbeonPublishedFormDefinition
	| formRegistry |

	formRegistry := anOrbeonPublishedFormDefinition registry.

	anOrbeonPublishedFormDefinition fieldInstancesDo: [:collection |
		collection do: [:fieldInstance | | formInstance |
			formInstance := fieldInstance parentObject.

			(formInstance definition == anOrbeonPublishedFormDefinition) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <AppFieldValue> is in the wrong <OrbeonPublishedFormDefinition>'].

			(formRegistry anyDefinitionIncludes: formInstance) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <OrbeonFormInstance> is not contained in the <FormDefinitionRegistry>'].
		
			(formRegistry instancesSetIncludes: formInstance) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <OrbeonFormInstance> is not included in the general <Set>'].

			(formRegistry instancesSetOfVersion: formInstance version includes: formInstance) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <OrbeonFormInstance> is not included in the version <Set>'].

			formInstance getAllFieldsValues do: [:fieldValue | 
				((anOrbeonPublishedFormDefinition fieldInstancesOf: fieldValue name) includes: 
				fieldValue) ifFalse: [OrbeonSanityCheckException signal: 'The <AppFieldValue> is missing in the general fields collection']].
		].
	].