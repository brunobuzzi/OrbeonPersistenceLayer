other
testAnalyze_appliance
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_analyze_appliance) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true