stream
position: integerShift
	"The receiver skip to <integerShift> position. Each version in <versions> collection eventually could have a ReadStream associated to it's instances "
	| stream localShift |

	stream := ReadStreamPortable on: versions.
	currentDefinition := stream next.
	globalSize := currentDefinition instances size.
	"here is detected in which instances collection correspond to index <integerShift>"
	[stream atEnd not and:[integerShift > globalSize]] whileTrue: [
		currentDefinition := stream next.
		globalSize := globalSize + currentDefinition instances size.
	].
	stream close.

	currentStream := streams at: currentDefinition put: (ReadStreamPortable on: currentDefinition instances keys).

	localShift := (integerShift = 0) ifTrue: [0] ifFalse: [integerShift - (globalSize - currentStream size)].

	currentStream position: localShift