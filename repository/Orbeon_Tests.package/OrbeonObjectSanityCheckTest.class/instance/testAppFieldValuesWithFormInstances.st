other
testAppFieldValuesWithFormInstances
	"Iterate over all field values and check if are contained in any Orbeon Form Instance and viceversa.
	It could be a time consuming operation"

	(self getOrbeonApplicationCache select: [:each | each isOrbeonApplication]) do: [:application | | diff |
		application definitionRegistry do: [:formRegistry | | allInstances |
			allInstances := Set new.
			formRegistry getAllVersion do: [:publishedDefinition | | instances |
				instances := Set new.
				publishedDefinition fieldInstances do: [:collection | 
					instances addAll: (collection collect: [:each | each parentObject]). "collect form instances from <AppFieldValue>"
				]. 
				allInstances addAll: instances.
				instances do: [:formInstance | 
					"check the definition of the <formInstance> must be identical to <publishedDefinition>"
					self assert: (formInstance definition == publishedDefinition).
					"check form instance from <AppFieldValue> is included in the any definition of the form registry"
					self assert: (formRegistry anyDefinitionIncludes: formInstance). 
					"check form instance from <AppFieldValue> is included in <instancesSet> of the form registry"
					self assert: (formRegistry instancesSetIncludes: formInstance).
					"check form instance from <AppFieldValue> is included in <instancesVersionSet> of the form registry"
					self assert: (formRegistry instancesSetOfVersion: formInstance version includes: formInstance).
					"check if all <AppFieldValue> are included in fields general collection of the form definition"
					formInstance getAllFieldsValues do: [:fieldValue | 
						self assert: ((publishedDefinition fieldInstancesOf: fieldValue name) includes: fieldValue).
					]. 
				].
			].
			"check if all form instances (collected from <AppFieldValue>) size is equal to general instance collection of the registry"

			diff := allInstances difference: formRegistry instancesSet.
			self assert: diff isEmpty.

			diff := formRegistry instancesSet difference: allInstances.
			self assert: diff isEmpty.

			self assert: allInstances size equals: formRegistry instancesSet size.
		].
	].