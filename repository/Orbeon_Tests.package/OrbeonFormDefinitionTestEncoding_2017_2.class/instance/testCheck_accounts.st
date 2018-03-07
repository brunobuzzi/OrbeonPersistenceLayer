other
testCheck_accounts
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_check_accounts) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true