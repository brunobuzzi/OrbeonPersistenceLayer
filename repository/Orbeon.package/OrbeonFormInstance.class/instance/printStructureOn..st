other
printStructureOn: aPrintStream
	"Print the structure of the receiver on stream <aPrintStream>. Iterate over receiver's section instances"

	aPrintStream nextPutAll: '<', app, '.', form,'>'.
	aPrintStream nextPutAll: String lf.

	sections do: [:eachSection | eachSection printStructureOn: aPrintStream count: 1].