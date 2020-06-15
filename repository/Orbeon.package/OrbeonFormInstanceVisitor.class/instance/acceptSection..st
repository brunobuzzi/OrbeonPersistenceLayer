other
acceptSection: aFormSectionInstance

	sectionsDo value: aFormSectionInstance.

	fieldsDo value: aFormSectionInstance value: nil value: aFormSectionInstance getFields.

	aFormSectionInstance gridsDo: [:each | each acceptVisitor: self].

	aFormSectionInstance subSectionsDo: [:each | each acceptVisitor: self].