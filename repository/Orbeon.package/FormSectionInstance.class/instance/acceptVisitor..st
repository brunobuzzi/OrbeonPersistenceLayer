other
acceptVisitor: aVisitor

	aVisitor acceptSection: self.

	subSections do: [:each | each acceptVisitor: aVisitor]