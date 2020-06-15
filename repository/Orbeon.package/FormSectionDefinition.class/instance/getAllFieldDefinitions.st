Accessing
getAllFieldDefinitions
	"Answer a collection with all field definitions <FormFieldDefinition> of the receiver.
	Includes fields inside grid definition <FormGridDefinition>"
	| allFields |

	allFields := OrderedCollection new.

	allFields addAll: fieldDefinitions asOrderedCollection.

	gridDefinitions do: [:gridDefinition | gridDefinition addFieldDefinitionsTo: allFields]. 

	^allFields