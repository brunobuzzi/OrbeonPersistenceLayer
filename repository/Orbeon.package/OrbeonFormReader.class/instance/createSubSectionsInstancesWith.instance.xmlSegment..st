recursive section
createSubSectionsInstancesWith: aFormSectionDefinition instance: aFormSectionInstance xmlSegment: xmlSection
	"The receiver creates field instances, grid instances and sub sections of current section <aFormSectionInstance> based on the definition <aFormSectionDefinition>.
	The section data is the xml node <xmlSection>"

	"create field instance for <aFormSectionInstance> getting data from <xmlSection>"
	self createFieldsInstancesFor: aFormSectionInstance xmlSegment: xmlSection. 

	"create section grids for <aFormSectionInstance> getting data from <xmlSection>"
	aFormSectionDefinition gridDefinitions do: [:gridDefnition | self createGridsFor: aFormSectionInstance xmlSegment: xmlSection.]. 

	"recursive call to following embedded sub sections. 
	Note that the recursive call is on method #createSubSectionsWith:xmlSegment: , because embedded sub section could be normal or repetable section"

	aFormSectionDefinition subSections do: [:subSectionDef | 
		aFormSectionInstance addSubSection: (self createSubSectionsWith: subSectionDef xmlSegment: xmlSection).].

	^aFormSectionInstance