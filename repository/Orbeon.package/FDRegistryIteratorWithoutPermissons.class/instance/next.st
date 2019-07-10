stream
next
	"The receiver answer the next element in <currentStream> if none answer <nil>.
	1) If <currentStream> is nil then initialize it with the first <OrbeonPublishedFormDefinition> instances keys in <versions>.
	2) Try to get next element from <currentStream>
	3) If 2) fail then iterate over <versions> to get next available <OrbeonPublishedFormDefinition>.
	4) Set new <currentStream> from <streams> Dictionary.
	5) Try to get next element from <currentStream>"
	| nextCollectionIndex |

	self atEnd ifTrue: [^nil].
 
	currentStream ifNil: [currentStream := streams at: versions first put: (ReadStreamPortable on: versions first instances keys)].

	currentStream atEnd ifFalse: [^currentStream next].

	currentStream close.
	streams removeKey: currentDefinition ifAbsent: [].

	nextCollectionIndex := (versions indexOf: currentDefinition) + 1.
	(nextCollectionIndex > versions size) ifTrue: [^nil]. 
	currentDefinition := versions at: nextCollectionIndex.

	currentStream := streams at: currentDefinition put: (ReadStreamPortable on: currentDefinition instances keys).

	^currentStream next