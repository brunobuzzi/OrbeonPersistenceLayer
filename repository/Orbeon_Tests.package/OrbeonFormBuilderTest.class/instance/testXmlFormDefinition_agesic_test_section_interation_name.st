tests
testXmlFormDefinition_agesic_test_section_interation_name

	builder := testRoot newFormBuilderFor: self newDefinitionTemplate formDefinition_agesic_test_section_interaction_name.

"Availability"
	self assert: builder isAvailable.
	[builder setAvailableNodeValueWith: '1212'] on: OrbeonInvalidXMLException do: [:ex | self assert: true].
	builder setAvailableNodeValueWith: 'true'.
	self assert: builder isAvailable.
	builder setAvailableNodeValueWith: 'false'.
	self deny: builder isAvailable.
	
"CustomNames"
	self assert: ((builder getCustomIterationNameFor: 'userInfoSection' bindName: 'userInfoSection-bind') = 'custom-user-info-iteration').
	self assert: ((builder getCustomIterationNameFor: 'section-8' bindName: 'section-8-bind') = nil).