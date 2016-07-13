other
edit
	| selection |

	selectionTrack keysAndValuesDo: [:key :value | value ifTrue:[selection := key]].

	selection ifNil: [^self].

	self topPanel editInstance: selection