section
printStructureOn: aPrintStream count: counter
	"Print the structure of the receiver on stream <aPrintStream>. As FormSectionDefinition is a recursive structure it use a counter <counter> to ident the resulting stream.
	1- Print Field Definitions of the receiver.
	2- Iterate over Grid Definitions of the receiver and print each of them.
	3- Recursive call. Iterate over Sub Section Defnitions of the receiver and print each of them"

	^sectionDefinition printStructureOn: aPrintStream count: counter