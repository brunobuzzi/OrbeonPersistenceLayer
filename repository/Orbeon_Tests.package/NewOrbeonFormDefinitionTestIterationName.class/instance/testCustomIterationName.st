tests
testCustomIterationName
	| section1 |

	section1 := form getSectionNamed: 'userInfoSection' ifAbsent: [self assert: false].

	self assert: (section1 iterationName = 'custom-user-info-iteration').

	section1 := form getSectionNamed: 'section-8' ifAbsent: [self assert: false].
	self assert: (section1 iterationName = nil).

	section1 := form getSectionNamed: 'section-grid' ifAbsent: [self assert: false].
	self assert: (section1 iterationName = nil).