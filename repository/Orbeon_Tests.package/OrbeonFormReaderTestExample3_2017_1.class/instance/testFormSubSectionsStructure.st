definition tests
testFormSubSectionsStructure
	| section1 section11 section2 section21 |

	section1 := reader formMainSections first.
	section11 := (reader formSubSectionsOf: section1) last.
	section2 := reader formMainSections second.
	section21 := (reader formSubSectionsOf: section2) last.

	self assert:  (reader formSubSectionsOf: section1) size = 1.
	self assert:  (reader formSubSectionsOf: section2) size = 1.

	self assert: ((section11 attributeAt: 'id') = 'section-7-control').
	self assert: ((section21 attributeAt: 'id') = 'section-24-control').

	self assert: ((reader formFieldsIn: section1) size = 4).
	self assert: ((reader formFieldsIn: section11) size = 2). "Fields inside Repeatable GRIDS [fr:grid] are ingnored"
	self assert: ((reader formFieldsIn: section2) size = 6). "Fields inside Repeatable GRIDS [fr:grid] are ingnored"
	self assert: ((reader formFieldsIn: section21) size = 1).