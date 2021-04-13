tests
testCustomIterationName
	| section1 gridMobile |

	section1 := form getSectionNamed: 'userInfoSection' ifAbsent: [self assert: false].
	self assert: section1 iterationName equals: 'custom-user-info-iteration'.

	gridMobile := section1 getGridDefinitionNamed: 'grid-mobile' ifNone: [self assert: false].
	self assert: gridMobile iterationName equals: 'custom-mobile-iteration'. 

	section1 := form getSectionNamed: 'section-8' ifAbsent: [self assert: false].
	self assert: (section1 iterationName = nil).

	section1 := form getSectionNamed: 'section-grid' ifAbsent: [self assert: false].
	self assert: (section1 iterationName = nil).