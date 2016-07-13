other
labelAt: key
	"The receiver answer the label associated with field name <key>"

	^labels at: key ifAbsent: [^'No Label'].