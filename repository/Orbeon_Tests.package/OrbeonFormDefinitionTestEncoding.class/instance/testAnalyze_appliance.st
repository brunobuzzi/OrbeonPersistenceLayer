other
testAnalyze_appliance
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplate formDefinition_analyze_appliance) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true