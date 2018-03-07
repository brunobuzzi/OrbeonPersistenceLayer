other
testApplicant_home_office_report
	| result |

	result := [((GRCodec forEncoding: 'utf-8') 
						decode: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_applicant_home_office_report) asString] 
				on: Error 
				do: [:err | self assert: false].

	self assert: true