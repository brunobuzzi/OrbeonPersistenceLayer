synchronize
synchronizeSelection
	"This methos is called when the user click on -Synchronize- button for the selected OrbeonFormDefinition."
	| selection |

	selectionTrack keysAndValuesDo: [:key :value | value ifTrue:[selection := key]].

	selection ifNil: [^self].

	self topPanel synchronize: selection