other
tesRegistration_Approval
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_registration_approval) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true