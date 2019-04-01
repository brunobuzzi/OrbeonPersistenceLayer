other
acceptSection: aFormSectionInstance

	sectionsDo value: aFormSectionInstance.

	fieldsDo value: aFormSectionInstance value: nil value: aFormSectionInstance fields.

	aFormSectionInstance grids do: [:each | each acceptVisitor: self].

	aFormSectionInstance subSections do: [:each | each acceptVisitor: self].