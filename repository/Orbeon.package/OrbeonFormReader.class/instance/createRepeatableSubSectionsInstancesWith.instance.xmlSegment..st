recursive section
createRepeatableSubSectionsInstancesWith: aFormSectionDefinition instance: aFormSectionInstance xmlSegment: xmlSection
	"The receiver creates field instances, grid instances and sub sections of current repeatable section <aFormSectionInstance> based on the definition <aFormSectionDefinition>.
	The section data is the xml node <xmlSection>"

	"iterate over xml iteration nodes of the repeatable section <aFormSectionInstance>.
	each section iteration is in a xml node with the name <[setcionName]'-interation'>. 
	it get all section iterations and for each iteration 
	1- create field instances, 2- create grid instances, 3- add the iteration to the repeatble section"
	xmlSection elementsAt: (aFormSectionDefinition getXmlterationName) do: [:eachIteration | | sectionIteration |
		sectionIteration := NormalSectionInstance name: aFormSectionDefinition name definition: aFormSectionDefinition.
		self createFieldsInstancesFor: sectionIteration xmlSegment: eachIteration.
		aFormSectionDefinition gridDefinitions do: [:gridDefnition | self createGridsFor: sectionIteration xmlSegment: eachIteration.].
		aFormSectionInstance addSectionIteration: sectionIteration.
	].
	"recursive call to following embedded sub sections. 
	Note that the recursive call is on method #createSubSectionsWith:xmlSegment: , because embedded sub section could be normal or repetable section"
	aFormSectionDefinition subSections do: [:subSectionDef | 
		aFormSectionInstance addSubSection: (self createSubSectionsWith: subSectionDef xmlSegment: xmlSection).]. 

	^aFormSectionInstance