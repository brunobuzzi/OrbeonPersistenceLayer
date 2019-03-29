other
acceptVisitor: aVisitor

	sections do: [:each | each acceptVisitor: aVisitor]