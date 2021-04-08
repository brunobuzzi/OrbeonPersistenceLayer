form building
buildForm
	"Set the values of receiver field's from <xmlString> using an orbeon form reader.
	The receiver has a dictionary (fieldName>value) to hold fields."

	sections := self newFormBuilder createSectionsInstancesWith: definition. "Create the GS Sections from the XML string"

	definition addInstance: self.

	self generateFormFieldValueSet. "store field values as instance of <FormFieldValue>"