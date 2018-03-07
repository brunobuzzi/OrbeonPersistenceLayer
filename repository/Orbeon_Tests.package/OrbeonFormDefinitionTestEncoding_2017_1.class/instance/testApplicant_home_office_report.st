other
testApplicant_home_office_report
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_applicant_home_office_report) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true