other
testCustomIterationName
	| section1 |

	section1 := form sectionDefinitions at: 'userInfoSection' ifAbsent: [self assert: false].

	self assert: (section1 iterationName = 'custom-user-info-iteration').

	section1 := form sectionDefinitions at: 'section-8' ifAbsent: [self assert: false].
	self assert: (section1 iterationName = nil).

	section1 := form sectionDefinitions at: 'section-grid' ifAbsent: [self assert: false].
	self assert: (section1 iterationName = nil).