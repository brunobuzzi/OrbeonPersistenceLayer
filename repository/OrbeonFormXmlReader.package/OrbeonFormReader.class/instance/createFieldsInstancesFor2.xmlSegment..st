recursive section
createFieldsInstancesFor2: aFormSectionInstance xmlSegment: xmlInstanceSegment
	"The receiver iterate over <aFormSectionInstance> fields names to get the values of each one contained in <xmlInstanceSegment>.
	Store each value in <aFormSectionInstance>"

	aFormSectionInstance fieldNames do: [:fieldName | | node value stValue |

		node := xmlInstanceSegment elementAt: fieldName. "get xml field node"

		value := (node isNil or: [node hasChildren not]) ifTrue: [''] ifFalse: [self getValueFrom: node]. "get field value"

		"store the field value in the form instance <aFormSectionInstance>"

		stValue := (orbeonFormInstance classOf: fieldName) convertToStValue: value. "see issue #208"
		aFormSectionInstance fieldAt: fieldName put: stValue.  

		"values at: fieldName put: (FormFieldValure for: value)." ].