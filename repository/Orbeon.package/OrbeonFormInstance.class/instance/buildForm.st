form building
buildForm
	"Set the values of receiver field's from <xmlString> using an orbeon form builder"

	self buildFormSections.

	definition addInstance: self.

	self generateFormFieldValueSet. "store field values as instance of <FormFieldValue>"