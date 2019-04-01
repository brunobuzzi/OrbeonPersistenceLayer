other
acceptSection: aFormSectionInstance

	"aFormSectionInstance acceptFields: fields."

	aFormSectionInstance grids do: [:each | each acceptVisitor: self].

	aFormSectionInstance subSections do: [:each | each acceptVisitor: self].