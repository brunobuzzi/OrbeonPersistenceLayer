form-field-value
processXMLSections
	"Set the values of receiver field's from <xmlString> using an orbeon form reader."

	sections := self newFormBuilder createSectionsInstancesWith: definition.
	
	sections do: [:each | each formInstance: self].