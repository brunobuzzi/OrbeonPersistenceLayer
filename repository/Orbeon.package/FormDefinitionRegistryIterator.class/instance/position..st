stream
position: integerShift
	"The receiver skip to <integerShift> position. Each version in <versions> collection eventually could have a ReadStream associated to it's instances "
	| stream size localShift |

	stream := ReadStreamPortable on: versions.
	currentDefinition := stream next.
	size := 0.
	"here is detected in which instances collection correspond to index <integerShift>"
	[stream atEnd not and:[integerShift > currentDefinition instances size]] whileTrue: [
		size := size + currentDefinition instances size.
		currentDefinition := stream next.
	].
	stream close.

	currentStream := streams at: currentDefinition put: (ReadStreamPortable on: currentDefinition instances keys).

	localShift := (integerShift = 0) ifTrue: [0] ifFalse: [integerShift - size].

	currentDefinition getLatestDefinition hasPermissionsEnabled ifFalse: [^currentStream position: localShift]. "the local shift in instances collection"

	currentStream position: localShift