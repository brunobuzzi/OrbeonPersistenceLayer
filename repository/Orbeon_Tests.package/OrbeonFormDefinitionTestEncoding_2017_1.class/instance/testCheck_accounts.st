other
testCheck_accounts
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_check_accounts) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true