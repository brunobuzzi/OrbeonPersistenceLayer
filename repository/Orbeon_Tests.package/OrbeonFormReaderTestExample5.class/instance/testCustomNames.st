other
testCustomNames
	| customNames |

	customNames := reader getAllSectionCustomIterations.

	self assert: (customNames includesKey: 'userInfoSection').

	self assert: ((customNames at: 'userInfoSection') = 'custom-user-info-iteration').

	self deny: (customNames includesKey: 'section-grid').