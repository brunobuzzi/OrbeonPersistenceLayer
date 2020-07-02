published definition
replaceCurrentDefinition: currentDefinition with: newDefinition
	"The receiver replace the current published definition <currentDefinition> with the new definition <newDefinition>.
	This is a special case --> <currentDefinition> must be removed from <currentVersions> collection and <newDefinition> must be added at the same index in the <currentVersions> collection"
	| stream addedToOldVersions |

	currentVersions add: newDefinition after: currentDefinition.

	currentVersions remove: currentDefinition ifAbsent: [].

	oldVersions isEmpty ifTrue: [^oldVersions add: currentDefinition].
 
	stream := ReadStream on: oldVersions. "<oldVersions> must keep the sequence of the version numbers"

	addedToOldVersions := false.
	[stream atEnd or: [addedToOldVersions]] whileFalse: [ | definition |
		definition := stream next.
		(definition version > currentDefinition version) 
		ifTrue: [oldVersions add: currentDefinition before: definition. 
					addedToOldVersions := true].
	].

	addedToOldVersions ifFalse: [oldVersions add: currentDefinition]