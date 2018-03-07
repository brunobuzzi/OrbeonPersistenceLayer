definition tests
testFormMainSectionsNames

	self assert: ((reader formMainSections first attributeAt: 'id') = 'section-1-control').

	self assert: ((reader formMainSections second attributeAt: 'id') = 'section-14-control').