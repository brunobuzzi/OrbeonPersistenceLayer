sanity checks
checkAppFieldValuesWithFormInstancesFor: anOrbeonPublishedFormDefinition
	| formRegistry |

	formRegistry := anOrbeonPublishedFormDefinition registry.

	anOrbeonPublishedFormDefinition fieldInstancesDo: [:collection |
		collection do: [:fieldInstance | | formInstance |
			formInstance := fieldInstance parentObject.
			"check the definition of the <formInstance> must be identical to <anOrbeonPublishedFormDefinition>"
			(formInstance definition == anOrbeonPublishedFormDefinition) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <AppFieldValue> is in the wrong <OrbeonPublishedFormDefinition>'].
			"check form instance from <AppFieldValue> is included in any definition of the form registry"
			(formRegistry anyDefinitionIncludes: formInstance) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <OrbeonFormInstance> is not contained in the <FormDefinitionRegistry>'].
			"check form instance from <AppFieldValue> is included in general <instancesSet> of the form registry"
			(formRegistry instancesSetIncludes: formInstance) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <OrbeonFormInstance> is not included in the general <Set>'].
			"check form instance from <AppFieldValue> is included in version <instancesVersionSet> of the form registry"
			(formRegistry instancesSetOfVersion: formInstance version includes: formInstance) 
			ifFalse: [OrbeonSanityCheckException signal: 'The <OrbeonFormInstance> is not included in the version <Set>'].
			"check if all <AppFieldValue> are included in fields general collection of the form definition"
			formInstance getAllFieldsValues do: [:fieldValue | 
				((anOrbeonPublishedFormDefinition fieldInstancesOf: fieldValue name) includes: 
				fieldValue) ifFalse: [OrbeonSanityCheckException signal: 'The <AppFieldValue> is missing in the general fields collection']].
		].
	].