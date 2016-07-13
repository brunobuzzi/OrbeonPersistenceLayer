test
getFieldsWithHyphen
	"Answer a collection with field that it's name includes '-' (Hyphen character).
	This is used for the Form Workflow when evaluating a expression. 
	If the form name includes '-' (Hyphen character) the evaluation will fail.

	Example (without hyphen): [:form | form age > 20]
	
	Example (with hyphen): [:form | form person-age > 20] - this will fail because '-' is a unary message, the correct is:

	[:form | (form perform: 'person-age') > 20]

	When importing Form Definitions from Orbeon if any field name has a hyphen --> we must show a warning to the user"


	^self fieldDefinitionSelect: [:each | each name includes: $-]