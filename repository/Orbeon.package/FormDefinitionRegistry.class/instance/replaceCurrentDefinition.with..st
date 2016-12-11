published definition
replaceCurrentDefinition: currentDefinition with: newDefinition
	"The receiver replace the current published definition <currentDefinition> with the new definition <newDefinition>.
	This is a special case --> <currentDefinition> must be removed from <currentVersions> collection and <newDefinition> must be added at the same index in the <currentVersions> collection"
	| stream |

	currentVersions add: newDefinition after: currentDefinition.

	currentVersions remove: currentDefinition ifAbsent: [].

	oldVersions isEmpty ifTrue: [^oldVersions add: currentDefinition].
 
	stream := ReadStream on: oldVersions. "<oldVersions> must keep the sequence of the version numbers"
	
	[stream atEnd] whileFalse: [ | definition |
		definition := stream next.
		(definition version = currentDefinition version)  ifTrue: [oldVersions add: currentDefinition after: definition].
		(definition version > currentDefinition version)  ifTrue: [oldVersions add: currentDefinition before: definition].
	].