recursive section
createInnerElementsOf: aFormSectionInstance basedOn: aFormSectionDefinition xmlSegment: xmlSegment
	"Creates the inner elements of <aFormSectionInstance> based on the definition <aFormSectionDefinition> using the xml <xmlSegment>.
	1- If <aFormSectionInstance> is repeatable call the repeatable method.
	2- If <aFormSectionInstance> is repeatable then creates the field instances and grid instances in the goes to sub sections in a recursive fashion"

	aFormSectionInstance isRepeatable 
	ifFalse: [
		"iterate over <section> fields names to get the values from <xmlSubSegment>"
		self createFieldsInstancesFor: aFormSectionInstance xmlSegment: xmlSegment.
		"create grid instances for the current section definition"
		aFormSectionDefinition gridDefinitions do: [:gridDefnition | self createGridsFor: aFormSectionInstance xmlSegment: xmlSegment.]. 
		"this is the recursive call to create sub sections"
		aFormSectionDefinition subSections do: [:subSectionDef |
			aFormSectionInstance addSubSection: (self createSubSectionsWith: subSectionDef xmlSegment: xmlSegment)].]
	ifTrue: [self createRepeatableSubSectionsInstancesWith: aFormSectionDefinition 
						instance: aFormSectionInstance 
						xmlSegment: xmlSegment].