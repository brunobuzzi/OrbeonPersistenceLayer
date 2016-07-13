other
numberOfFields
	"Answer the number of fields of the OrbeonFormDefinition <definition>.
	Plus 2 is used to add 2 extra columns, one for form <id> and another to insert extra data"

	^definition fieldDefinitions size + 2