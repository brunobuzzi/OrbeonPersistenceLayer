other
printStructureOn: aPrintStream
	"Print the structure of the receiver on stream <aPrintStream>. Iterate over receiver's section definitions"

	aPrintStream nextPutAll: '<', self getApplicationName, '.', formName,'>'.
	aPrintStream nextPutAll: String lf.

	sectionDefinitions do: [:eachSection | 	eachSection printStructureOn: aPrintStream count: 1].