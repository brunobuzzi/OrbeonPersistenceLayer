other
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	Smalltalk at: #BpmApplication ifAbsent: [^definitionRegistry isEmpty]. "the BPM application is NOT installed in the system"

	^definitionRegistry isEmpty and: [super canDelete] "the BPM application is installed in the system --> check BPM dependencies"