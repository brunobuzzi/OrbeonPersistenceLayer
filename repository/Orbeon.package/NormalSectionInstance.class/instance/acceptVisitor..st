other
acceptVisitor: aVisitor

	aVisitor acceptSection: self.

	aVisitor acceptFields: fields.

	grids do: [:each | each acceptVisitor: aVisitor].

	subSections do: [:each | each acceptVisitor: aVisitor].