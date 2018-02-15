other
testDuplicateForm
	| id apiOperation |

	id := UUID new asString.

	apiOperation := OrbeonFormDefinitionDuplicateApi id: id xmlString: OrbeonFormDefinitionTemplate formDefinition_registration_approval.

	apiOperation execute.

	self assert: true