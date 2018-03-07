other
testCustomNames

	self assert: ((reader getCustomIterationNameFor: 'userInfoSection' bindName: 'userInfoSection-bind') = 'custom-user-info-iteration').

	self assert: ((reader getCustomIterationNameFor: 'section-8' bindName: 'section-8-bind') = nil).