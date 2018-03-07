other
testRegistration_Approval
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_registration_approval) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true