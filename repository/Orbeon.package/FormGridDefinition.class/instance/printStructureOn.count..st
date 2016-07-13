other
printStructureOn: aPrintStream count: counter
	"Print the structure of the receiver on stream <aPrintStream>. It use a counter <counter> to ident the resulting stream.
	Print Field Definitions of the receiver."

	1 to: (counter + 1) do: [:each | aPrintStream nextPutAll: String tab].
	aPrintStream nextPutAll: '(', name, ')'.
	aPrintStream nextPutAll: String lf.

	fieldDefinitions do: [:each | 
		1 to: (counter + 2) do: [:each | aPrintStream nextPutAll: String tab].
		aPrintStream nextPutAll: each name.
		aPrintStream nextPutAll: ', ', each type.
		aPrintStream nextPutAll: String lf.].