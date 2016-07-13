other
printStructureOn: aPrintStream count: counter
	"Print the structure of the receiver on stream <aPrintStream> and use the counter <counter> to ident the resulting string.
	Iterate over all section iterations (NormalSectionInstances) to print the structure of each of them"

	sectionIterations do: [:each | each printStructureOn: aPrintStream count: counter].

	subSections do: [:each | each printStructureOn: aPrintStream count: counter + 1].