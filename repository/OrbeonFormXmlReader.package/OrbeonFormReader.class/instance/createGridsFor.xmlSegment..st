recursive section
createGridsFor: aFormSectionInstance xmlSegment: xmlSubSegment
	"Creates and store FormGridInstance on the form instance <aFormSectionInstance> getting values from xml node <xmlSubSegment>"
	| sectionDefinition |

	sectionDefinition := aFormSectionInstance sectionDefinition.
	"iteration over grid definitions of the <FormSectionDefinition> sectionDefinition "
	sectionDefinition gridNamesDo: [:gridName | | gridDefinition grid xmlGrid |

		gridDefinition := sectionDefinition getGridDefinitionNamed: gridName. "get the actual grid definition"
		grid := FormGridInstance newNamed: gridName definition: gridDefinition. "create the grid instance"
		"iterate over each grid iterations. Each Grid Iteration is a Dictionary where the key is the field name and the value is the field value "
		xmlGrid := xmlSubSegment elementsAt: gridName do: [:xmlGridIteration | | iteration |
			iteration := Dictionary new.
			"iterate over fields of the current grid iteration to get field names and values"
			gridDefinition fieldDefinitionsDo: [:fieldDefinition | | fieldValue stValue |
				fieldValue := xmlGridIteration elementAt: fieldDefinition name.
				fieldValue := (fieldValue isNil or: [fieldValue hasChildren not]) ifTrue: [''] ifFalse: [self getValueFrom: fieldValue].
				stValue := (orbeonFormInstance classOf: fieldDefinition name) convertToStValue: fieldValue. "see issue #208"
				iteration at: fieldDefinition name put: stValue].

			grid addIteration: iteration]. "store the iteration in the grid instance"

		aFormSectionInstance addGrid: grid.]. "store the grid instance in the section instance"