other
doesNotUnderstand: aMessageDescriptor

	(self defaultOrbeonDataFormatVersion instanceTemplateClass canUnderstand: aMessageDescriptor selector) 
	ifTrue: [^self defaultOrbeonDataFormatVersion instanceTemplateClass perform: aMessageDescriptor selector].

	^super doesNotUnderstand: aMessageDescriptor