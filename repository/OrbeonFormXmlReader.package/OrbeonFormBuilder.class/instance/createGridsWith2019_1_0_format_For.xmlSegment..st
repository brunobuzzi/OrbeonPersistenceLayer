build instance components
createGridsWith2019_1_0_format_For: aFormSectionInstance xmlSegment: xmlSubSegment
	"Creates and store FormGridInstance on the form instance <aFormSectionInstance> getting values from xml node <xmlSubSegment>"
	| sectionDefinition |

	sectionDefinition := aFormSectionInstance sectionDefinition.
	"iteration over grid definitions of the <FormSectionDefinition> sectionDefinition "
	sectionDefinition gridNamesDo: [:gridName | | gridDefinition grid |
		gridDefinition := sectionDefinition getGridDefinitionNamed: gridName. "get the actual grid definition"
		grid := FormGridInstance newNamed: gridName definition: gridDefinition. "create the grid instance"
		"iterate over each grid iterations. Each Grid Iteration is a Dictionary where the key is the field name and the value is the field value "

		(xmlSubSegment xPath: gridDefinition getXpathForNodeContent) do: [:xmlGridIteration | | iteration |
			iteration := Dictionary new.
			gridDefinition fieldDefinitionsDo: [:fieldDefinition | | fieldValue stValue |
				fieldValue := xmlGridIteration elementAt: fieldDefinition name.
				fieldValue := (fieldValue isNil or: [fieldValue hasChildren not]) ifTrue: [''] ifFalse: [self getValueFrom: fieldValue].
				stValue := (orbeonFormInstance classOf: fieldDefinition name) convertToStValue: fieldValue. "see issue #208"
				iteration at: fieldDefinition name put: stValue
			].
			grid addIteration: iteration.
		].
		aFormSectionInstance addGrid: grid.]. "store the grid instance in the section instance"