other
testRegistration_Approval
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplate formDefinition_registration_approval) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true