orbeon sections
formMainSections
	| element |

	element := xmlDocument elementsAt: 'xh:html'.
	element := element isEmpty ifFalse: [element last] ifTrue: [^OrbeonInvalidXMLException signal: 'Bad format - No <xh:html> element'].

	element := element elementsAt: 'xh:body'.
	element := element isEmpty ifFalse: [element last] ifTrue: [^OrbeonInvalidXMLException signal: 'Bad format - No <xh:body> element'].

	element := element elementsAt: 'fr:view'.
	element := element isEmpty ifFalse: [element last] ifTrue: [^OrbeonInvalidXMLException signal: 'Bad format - No <fr:view> element'].

	element := element elementsAt: 'fr:body'.
	element := element isEmpty ifFalse: [element last] ifTrue: [^OrbeonInvalidXMLException signal: 'Bad format - No <fr:body> element'].

	^(element elementsAt: 'fr:section') asOrderedCollection