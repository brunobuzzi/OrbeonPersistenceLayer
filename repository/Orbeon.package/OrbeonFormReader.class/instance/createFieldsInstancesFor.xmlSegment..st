recursive section 2
createFieldsInstancesFor: aFormSectionInstance xmlSegment: xmlInstanceSegment
	"The receiver iterate over <aFormSectionInstance> fields names to get the values of each one contained in <xmlInstanceSegment>.
	Store each value in <aFormSectionInstance>"

	aFormSectionInstance fieldNames do: [:fieldName | | node value |

		node := xmlInstanceSegment elementAt: fieldName. "get xml field node"

		value := (node isNil or: [node hasChildren not]) ifTrue: [''] ifFalse: [self getValueFrom: node]. "get field value"

		aFormSectionInstance fieldAt: fieldName put: value.  "store the field value in the form instance <aFormSectionInstance>"

		"values at: fieldName put: (FormFieldValure for: value)." ].