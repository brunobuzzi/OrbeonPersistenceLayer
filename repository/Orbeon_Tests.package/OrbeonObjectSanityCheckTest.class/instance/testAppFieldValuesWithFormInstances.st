other
testAppFieldValuesWithFormInstances
	"Iterate over all field values and check if are contained in any Orbeon Form Instance and viceversa.
	It could be a time consuming operation"

	(self getOrbeonApplicationCache select: [:each | each isOrbeonApplication]) do: [:application | 
		application definitionRegistry do: [:formRegistry | | allInstances |
			allInstances := Set new.
			formRegistry getAllVersion do: [:publishedDefinition | | instances |
				instances := Set new.
				publishedDefinition fieldInstances do: [:collection | 
					instances addAll: (collection collect: [:each | each parentObject]).
				]. 
				allInstances addAll: instances.
				instances do: [:formInstance | 
					self assert: (formRegistry anyDefinitionIncludes: formInstance).
					self assert: (formRegistry instancesSet includes: formInstance).
					self assert: ((formRegistry instancesSetOfVersion: formInstance version) includes: formInstance).
				].
			].
			self assert: allInstances size equals: formRegistry instancesSet size.
		].
	].