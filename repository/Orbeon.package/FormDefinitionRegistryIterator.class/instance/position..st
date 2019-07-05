stream
position: integerShift
	"The receiver skip to <integerShift> position. 
	Detect the correct <OrbeonPublishedFormDefinition> that have the <integerShift> then calculate the local shift and then set the position"
	| stream size localShift |

	stream := ReadStreamPortable on: versions.
	currentDefinition := stream next.
	size := 0.
	"detect in which <OrbeonPublishedFormDefinition> instances is located <integerShift> then set <currentDefinition>"
	[stream atEnd not and:[integerShift > currentDefinition instances size]] whileTrue: [
		size := size + currentDefinition instances size.
		currentDefinition := stream next.
	].
	stream close.

	currentStream := streams at: currentDefinition put: (ReadStreamPortable on: currentDefinition instances keys).

	localShift := (integerShift = 0) ifTrue: [0] ifFalse: [integerShift - size]. "calculate the local collection (instances) shift"

	currentStream position: localShift