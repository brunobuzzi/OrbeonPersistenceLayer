recursive section
createSimpleComponentsOf: aFormSectionInstance basedOn: aFormSectionDefinition xmlSegment: xmlSegment
	"The receiver create the simple components of section <aFormSectionInstance> with definition <aFormSectionDefinition> taking data from xml node <xmlSegment>"

	"iterate over <section> fields names to get the values from <xmlSubSegment>"
	self createFieldsInstancesFor: aFormSectionInstance xmlSegment: xmlSegment.

	"create grid instances for the current section definition"
	aFormSectionDefinition gridDefinitionsDo: [:gridDefnition | self createGridsFor: aFormSectionInstance xmlSegment: xmlSegment].