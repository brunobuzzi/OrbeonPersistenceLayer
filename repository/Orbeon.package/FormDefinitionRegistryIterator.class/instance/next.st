stream
next
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