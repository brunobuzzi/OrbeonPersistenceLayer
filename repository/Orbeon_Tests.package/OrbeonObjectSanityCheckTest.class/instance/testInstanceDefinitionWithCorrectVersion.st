other
testInstanceDefinitionWithCorrectVersion
	"Check if the form definition of all form instance are correct.
	See issue: 243"

	(self getOrbeonApplicationCache select: [:application | application isObeonApplication]) do: [:application | 
		application getAllInstances do: [:formInstance | 
			self assert: (formInstance definition == (application definitionNamed: formInstance formName version: formInstance version ifNone: []))] 

	].