form building
buildFormSections
	"The receiver build its the internal sections"

	sections := self newFormBuilder createSectionsInstancesWith: definition.
	
	sections do: [:each | each formInstance: self].