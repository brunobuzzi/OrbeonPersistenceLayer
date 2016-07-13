other
viewPdf
	| selection |

	selectionTrack keysAndValuesDo: [:key :value | value ifTrue:[selection := key]].

	selection ifNil: [^self].

	self topPanel viewPDFInstance: selection