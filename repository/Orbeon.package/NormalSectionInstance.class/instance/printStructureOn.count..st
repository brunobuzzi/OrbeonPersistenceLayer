other
printStructureOn: aPrintStream count: counter
	"Print the structure of the receiver on stream <aPrintStream>. As FormSectionInstance is a recursive structure it use the counter <counter> to ident the resulting string.
	1- Print Field Instances.
	2- Iterate over Grid Instances and print each of them.
	3- Recursive call. Iterate over Sub Section Instances of the receiver and print each of them"

	1 to: counter do: [:each | aPrintStream nextPutAll: String tab].

	aPrintStream nextPutAll: '[', name, ']'.
	sectionDefinition isRepeatable 
	ifTrue: [aPrintStream nextPutAll: ' - iteration(', self getSubSectionIndex, ')'].
	aPrintStream nextPutAll: String lf.
	
	fields keysAndValuesDo: [:key :value | 
		1 to: (counter + 1) do: [:each | aPrintStream nextPutAll: String tab].
		aPrintStream nextPutAll: key, ': ', (value ifNil: ['nil'] ifNotNil: [:value | value]).
		aPrintStream nextPutAll: String lf.].

	grids do: [:each | each printStructureOn: aPrintStream count: counter].

	subSections do: [:each | 
		each printStructureOn: aPrintStream count: counter + 1]