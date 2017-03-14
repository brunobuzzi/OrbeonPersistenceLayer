other
printStructureOn: aPrintStream count: counter
	"Print the structure of the receiver on stream <aPrintStream>. As FormSectionDefinition is a recursive structure it use a counter <counter> to ident the resulting stream.
	1- Print Field Definitions of the receiver.
	2- Iterate over Grid Definitions of the receiver and print each of them.
	3- Recursive call. Iterate over Sub Section Defnitions of the receiver and print each of them"

	1 to: counter do: [:each | aPrintStream nextPutAll: String tab].

	aPrintStream nextPutAll: '[', name, ']'.
	isRepeatable ifTrue: [aPrintStream nextPutAll: '(R)'] ifFalse: [aPrintStream nextPutAll: '(N)']. "normal or repeat section"
	aPrintStream nextPutAll: String lf.
	
	fieldDefinitions do: [:each | 
		1 to: (counter + 1) do: [:count | aPrintStream nextPutAll: String tab].
		aPrintStream nextPutAll: each name.
		aPrintStream nextPutAll: ', ', each type.
		aPrintStream nextPutAll: String lf.].

	gridDefinitions do: [:each | each printStructureOn: aPrintStream count: counter].

	subSections do: [:each | each printStructureOn: aPrintStream count: counter + 1]